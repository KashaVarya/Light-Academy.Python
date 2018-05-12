from abc import ABCMeta, abstractmethod


class Strategy(metaclass=ABCMeta):
    @abstractmethod
    def select_squad(self, army):
        pass


st = Strategy()
print(st)
