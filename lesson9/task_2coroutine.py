import asyncio
import random
import math


async def rand_num():
    number = []
    for i in range(5):
        number.append(random.randint(0, 100))

    print(number)

    return number


async def sqrt_num():
    number = await rand_num()
    result = []

    for num in number:
        result.append(math.sqrt(num))

    print(result)


loop = asyncio.get_event_loop()
loop.run_until_complete(sqrt_num())
loop.close()
