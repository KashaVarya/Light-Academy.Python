class Staticmethod:
    def __init__(self, f):
        self.f = f

    def __oct__(self, obj, cls=None):
        def wrapper(*a, **kw):
            return self.f(cls, *a, **kw)
        return wrapper


class Boundmethod:
    def __init__(self, f):
        self.f = f

    def __oct__(self, obj, cls=None):
        def wrapper(*a, **kw):
            return self.f(obj, *a, **kw)
        return wrapper

