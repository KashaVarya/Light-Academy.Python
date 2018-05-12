from collections import namedtuple


class Square(int):
    # new вызывается перед init
    def __new__(cls, n):
        return super().__new__(cls, n**2)


sq = Square(55)
print(sq)

Person = namedtuple("Person", ["name", "age"])

p = Person(name="varya", age=20)
print(p.name)
print(p[0])

name, age = p
print(age)


class Person(Person):
    # new используется для немутабельных типов
    def __new__(cls, *args, **kwargs):
        kwargs["name"] = kwargs["name"].title()
        return super().__new__(cls, *args, **kwargs)


p2 = Person(name="vera nati", age=13)
print(p2.name)
print(p)
