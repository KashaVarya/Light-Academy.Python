class Bar:
    @property
    def foo(self):
        return self._x

    @foo.setter
    def foo(self, value):
        self._x = value * value

    @foo.deleter
    def foo(self):
        del self._x


bar = Bar()
bar.foo = 4
print(bar.foo)
del bar.foo
