class Property:
    def __init__(self,
                 getter=None,
                 setter=None,
                 deleter=None):
        self.getter = getter
        self.setter = setter
        self.deleter = deleter

    def __get__(self, obj, cls=None):
        if self.getter is None:
            raise AttributeError
        return self.getter(obj)

    def __set__(self, obj, value):
        if self.setter is None:
            raise AttributeError
        self.setter(obj, value)

    def __delete__(self, obj):
        if self.deleter is None:
            raise AttributeError
        self.deleter(obj)


class Bar:

    def getx(self):
        return self._x

    def setx(self, v):
        self._x = v * v

    def delx(self):
        del self._x

    foo = Property(getx, setx, delx)


bar = Bar()
bar.foo = 4
print(bar.foo)
