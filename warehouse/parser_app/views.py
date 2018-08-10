from django.http import HttpResponse
from django.views.generic import TemplateView, RedirectView, ListView
import redis

from parser_app.models import ItemModel
from warehouse import settings


class IndexView(TemplateView):
    template_name = 'parser_app/index.html'

    def post(self, request):
        connection = redis.StrictRedis(
            host=settings.REDIS_HOST,
            port=settings.REDIS_PORT,
        )
        connection.lpush(
            'warehouse:start_urls',
            'https://www.barneyswarehouse.com/category/men/shoes/N-1waxoc5',
            'https://www.barneyswarehouse.com/category/women/shoes/N-w9m0kw'
        )

        return HttpResponse('Success push. Wait...')


class MainRedirectView(RedirectView):
    url = 'parser'


class ResultsView(ListView):
    model = ItemModel
    template_name = 'parser_app/result.html'
