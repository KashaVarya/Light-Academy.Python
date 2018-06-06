from aiohttp import web, WSMsgType


async def handler(request):
    return web.Response(text='Hello Aiohttp!')


async def ws_handler(request):
    ws = web.WebSocketResponse()
    await  ws.prepare(request)
    async for msg in ws:
        if msg.type == WSMsgType.TEXT:
            print(msg.data)
            if msg.data == 'close':
                await wa.close()
            else:
                await ws.send_str(msg.data + '/answer')
        elif msg.type == WSMsgType.ERROR:
            print('Exeption')
    return ws
