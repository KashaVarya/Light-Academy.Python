import random
import Unit


class Soldier(Unit):
    def __init__(self):
        self.experience = 0
        self.is_alive = True
        self.health = 0
        self.recharge_to = 0

    def alive(self):
        return self.is_alive

    def health(self):
        return self.health

    def recharge(self):
        return self.recharge_to

    def attack(self):
        return (0.5 * (1 + self.health / 100) * random.randrange(50 + self.experience, 100) / 100) \
               * 0.05 + self.experience / 100


    # @abstractmethod
    # def attack(self, target):
    #     pass
    #
    # @abstractmethod
    # def take_damage(self, dmg):
    #     pass
    #
    # @property
    # @abstractmethod
    # def attack_power(self):
    #     pass
    #
    # @property
    # @abstractmethod
    # def members(self):
    #     pass