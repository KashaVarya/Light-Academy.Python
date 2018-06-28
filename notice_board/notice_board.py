import os
import redis
import urllib.parse
from werkzeug.wrappers import Request, Response
from werkzeug.routing import Map, Rule
from werkzeug.exceptions import HTTPException, NotFound
from werkzeug.wsgi import SharedDataMiddleware
from werkzeug.utils import redirect
from jinja2 import Environment, FileSystemLoader
import datetime


class NoticeBoard(object):

    def __init__(self, config):
        self.redis = redis.Redis(config['redis_host'], config['redis_port'])
        template_path = os.path.join(os.path.dirname(__file__), 'templates')
        self.jinja_env = Environment(loader=FileSystemLoader(template_path),
                                     autoescape=True)
        self.url_map = Map([
            Rule('/', endpoint='main_view'),
            Rule('/add_notice', endpoint='add_notice'),
            Rule('/notice_<board_num>', endpoint='notice_detail'),
            Rule('/add_comment_<board_num>', endpoint='add_comment'),
        ])

    def render_template(self, template_name, **context):
        t = self.jinja_env.get_template(template_name)
        return Response(t.render(context), mimetype='text/html')

    def dispatch_request(self, request):
        adapter = self.url_map.bind_to_environ(request.environ)
        try:
            endpoint, values = adapter.match()
            return getattr(self, endpoint)(request, **values)
        except HTTPException as e:
            return e

    def wsgi_app(self, environ, start_response):
        request = Request(environ)
        response = self.dispatch_request(request)
        return response(environ, start_response)

    def __call__(self, environ, start_response):
        return self.wsgi_app(environ, start_response)

    def main_view(self, request):
        return self.render_template('main.html', notices=self.get_notices())

    def add_notice(self, request):
        mes = ''
        if request.method == 'POST':
            author = request.form['author']
            notice = request.form['notice']

            if not author:
                mes = "Enter your name!"
                return self.render_template('add_notice.html', mes=mes)

            if not notice:
                mes = "Enter your notice!"
                return self.render_template('add_notice.html', mes=mes)

            board_num = self.add_in_db(author, notice)
            return redirect('/notice_' + board_num)
        return self.render_template('add_notice.html', mes=mes)

    def notice_detail(self, request, board_num):
        author = self.redis.get('author:board:' + board_num).decode('utf-8')
        notice = self.redis.get('board:' + board_num).decode('utf-8')
        date_time = self.redis.get('datetime:board:' + board_num).decode('utf-8')

        return self.render_template('notice_detail.html',
                                    author=author,
                                    notice=notice,
                                    date_time=date_time,
                                    board_num=board_num,
                                    comments=self.get_comments(board_num))

    def add_comment(self, request, board_num):
        mes = ''
        if request.method == "POST":
            author = request.form['author']
            comment = request.form['comment']

            if not author:
                mes = "Enter your name!"
                return self.render_template('add_comment.html', mes=mes)

            if not comment:
                mes = "Enter your comment!"
                return self.render_template('add_comment.html', mes=mes)

            self.add_com_db(author, comment, board_num)
            return redirect('/notice_' + board_num)
        return self.render_template('add_comment.html', mes=mes)

    def add_in_db(self, author, notice):
        board_num = self.redis.get('board:' + notice)
        if board_num is not None:
            return board_num

        board_id = self.redis.incr('last-board-id')
        board_num = base36_encode(board_id)

        format_str = "%a %b %d %H:%M:%S %Y"
        date_time = datetime.datetime.today().strftime(format_str)

        self.redis.set('board:' + board_num, notice)
        self.redis.set('author:board:' + board_num, author)
        self.redis.set('datetime:board:' + board_num, date_time)
        return board_num

    def add_com_db(self, author, comment_text, board_num):
        comment = self.redis.get('comment:' + comment_text)
        if comment is not None:
           return comment

        comment_id = self.redis.incr('last-comment-id')
        comment_num = base36_encode(comment_id)

        self.redis.set('comment:' + comment_num, comment_text)
        self.redis.set('author:comment:' + comment_num, author)
        self.redis.lpush('comment:board:' + board_num, comment_num)
        return comment_num

    def get_notices(self):
        keys = self.redis.keys('board:*')
        keys.sort()
        notice_list = []
        for i, key in enumerate(keys, 1):
            notice_list.append((
                i,
                self.redis.get(key).decode('utf-8')
            ))
        return notice_list[::-1]

    def get_comments(self, board_num):
        num_comments = self.redis.llen('comment:board:' + board_num)
        keys = [
            self.redis.lindex('comment:board:' + board_num, i).decode('utf-8')
            for i in range(num_comments)
        ]
        comments_list = []
        for key in keys:
            comments_list.append((
                self.redis.get('comment:' + key).decode('utf-8'),
                self.redis.get('author:comment:' + key).decode('utf-8')
            ))
        return comments_list[::-1]


def create_app(redis_host='localhost', redis_port=6379, with_static=True):
    application = NoticeBoard({
        'redis_host':       redis_host,
        'redis_port':       redis_port
    })
    if with_static:
        application.wsgi_app = SharedDataMiddleware(application.wsgi_app, {
            '/static':  os.path.join(os.path.dirname(__file__), 'static')
        })
    return application


def base36_encode(number):
    assert number >= 0, 'positive integer required'
    if number == 0:
        return '0'
    base36 = []
    while number != 0:
        number, i = divmod(number, 36)
        base36.append('0123456789abcdefghijklmnopqrstuvwxyz'[i])
    return ''.join(reversed(base36))


if __name__ == '__main__':
    from werkzeug.serving import run_simple
    app = create_app()
    run_simple('127.0.0.1', 5000, app, use_debugger=True, use_reloader=True)