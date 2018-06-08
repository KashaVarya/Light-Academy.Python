def lazy_range(up_to):
    index = 0
    while index < up_to:
        jump = yield index
        if not jump:
            jump = 1
        index += jump


gen = lazy_range(5)
print(gen)
print(next(gen))  # 0
print(gen.send(3))  # 3
print(gen.send(-2))  # 1
