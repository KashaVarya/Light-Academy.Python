def lazy_range(up_to):
    index = 0
    while index < up_to:
        yield index
        index += 1


gen = lazy_range(5)
print(gen)
print(next(gen))  # 0
print(next(gen))  # 1
print(next(gen))  # 2
print(next(gen))  # 3
print(next(gen))  # 4
print(next(gen))  # StopIteration
