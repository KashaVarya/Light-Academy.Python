import asyncio


async def count_down(number, n):
    while n > 0:
        print('%s minus %s' % (n, number))
        await asyncio.sleep(1)
        n -= number


loop = asyncio.get_event_loop()
tasks = [
    asyncio.ensure_future(count_down(2, 15)),
    asyncio.ensure_future(count_down(1, 4))
]

loop.run_until_complete(asyncio.wait(tasks))
