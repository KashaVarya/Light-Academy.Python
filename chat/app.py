import asyncio
from aiohttp import web


loop = asyncio.get_event_loop()

app = web.Application(lool=loop, middlewares=[
    session_middleware(EncryptedCookieStorage(SECRET_KEY)),
    authorize,
    db_handler,
])
