from aiohttp import web
from app_gif.settings import config
from app_gif.routes import setup_routes
import aioredis


async def init_db(app):
    conf = app['config']['redis']
    connection = await aioredis.create_connection(
        [conf['host'], conf['port']]
    )
    app['conn'] = connection


app = web.Application()
setup_routes(app)
app['config'] = config
app.on_startup.append(init_db)
web.run_app(app)
