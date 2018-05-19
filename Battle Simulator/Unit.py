from abc import ABCMeta, abstractmethod
import Clock


# target.take_damage()
# self._recharge_to = self.clock.time() + 1000
# statistics    ---  harmonic-mcan

class Unit(metaclass=ABCMeta):
    @abstractmethod
    def attack(self, target):
        pass

    @abstractmethod
    def take_damage(self, dmg):
        pass

    @property
    @abstractmethod
    def alive(self):
        pass

    @property
    @abstractmethod
    def health(self):
        pass

    @property
    @abstractmethod
    def attack_power(self):
        pass

    @property
    @abstractmethod
    def recharge(self):
        pass

    @property
    @abstractmethod
    def members(self):
        pass
