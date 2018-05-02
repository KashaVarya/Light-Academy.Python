def butter(fn):
    def wrapper(self, msg):
        print("See butter")
        fn(self, msg)
    return wrapper


class Animal:
    def say(self, msg):
        raise NotImplementedError

    def __init__(self, name):
        self.name = name


class Cat(Animal):
    @butter
    def say(self, msg):
        if msg == "":
            raise AnimalError(self)
        print(self.name, " says 'meow' " + msg)

    def __init__(self, name, color):
        super().__init__(name)
        self.color = color

    def __str__(self):
        return "Error: %s"%str(self.animal)


class AnimalError(Exception):
    def __init__(self, animal):
        super().__init__()
        self.animal = animal

cat1 = Cat("Murcia", "Red")
cat2 = Cat("Peace", "Grey")
cat3 = Cat("Sam", "White")

try:
    cat1.say("")
    cat2.say("hi2")
    cat3.say("hi3")
except AnimalError as e:
    print(e.animal)

xxx = cat2.say
xxx("xxx")
