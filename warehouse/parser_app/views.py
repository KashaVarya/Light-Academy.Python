from django.views.generic import View
from django.shortcuts import render
import redis
from warehouse import settings


class IndexView(View):

    def get(self, request):
        return render(
            request,
            'parser_app/index.html',
            {
                'mes': '',
            }
        )

    def post(self, request):
        connection = redis.StrictRedis(
            host=settings.REDIS_HOST,
            port=settings.REDIS_PORT,
        )
        connection.lpush('warehouse:start_url https://www.barneyswarehouse.com/category/men/shoes/N-1waxoc5')

        return render(
            request,
            'parser_app/index.html',
            {
                'mes': 'Success push. Wait...',
            }
        )
