class Foo:
    def __init__(self):
        self.i = 0
        self.x = [1, 2, 3]

    def __iter__(self):
        return self

    def __next__(self):
        try:
            return self.x[self.i]
        except IndexError:
            raise StopIteration
        finally:
            self.i = self.i + 1


f = Foo()
for i in f:
    print(i)

for i in f:
    print(i)


# x = (
#     i * 2
#     for i in range(4)
# )
# y = foo()
# it = iter(y)
#
# try:
#     print(next(it))
#     print(next(it))
#     print(next(it))
#     #print(next(it))
#     #print(next(it))
# except StopIteration:
#     print("Stop Iterator")


