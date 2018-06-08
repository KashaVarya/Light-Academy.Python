import asyncio
from aiohttp import web

from routes import routes


async def shutdown(server, app, handler):

    server.close()
    await server.wait_closed()
    app.client.close()  # database connection close
    await app.shutdown()
    await handler.finish_connections(10.0)
    await app.cleanup()


loop = asyncio.get_event_loop()
serv_generator, handler, app = loop.run_until_complete(init(loop))
serv = loop.run_until_complete(serv_generator)
    log.debug('start server', serv.sockets[0].getsockname())
try:
    loop.run_forever()
except KeyboardInterrupt:
    log.debug(' Stop server begin')
finally:
    loop.run_until_complete(shutdown(serv, app, handler))
    loop.close()
log.debug('Stop server end')


app = web.Application(loop=loop, middlewares=[
    session_middleware(EncryptedCookieStorage(SECRET_KEY)),
    authorize,
    db_handler,
])

for route in routes:
    app.router.add_route(route[0], route[1], route[2], name=route[3])


app.client = ma.AsyncIOMotorClient(MONGO_HOST)
app.db = app.client[MONGO_DB_NAME]