from datetime import datetime
import asyncio


async def slow_routine():
    await asyncio.sleep(3)
    print(datetime.now())
    return datetime.now()


print(datetime.now())

loop = asyncio.get_event_loop()

loop.run_until_complete(asyncio.gather(
    slow_routine(),
    slow_routine(),
    slow_routine(),
))

print(datetime.now())


