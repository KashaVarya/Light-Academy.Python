"""
Game 2048
"""

import random
from random import randrange
import getch
                            # Ещё не доделана функция has_moves()

class Game:
    """
    Main class of the program
    """
    def __init__(self):
        self.field = [[0] * 4 for _ in range(4)]
        self.num_row = len(self.field)
        self.num_col = max(len(row) for row in self.field)
        self.score = 0

    def move_hor(self, f_start1, f_stop1, f_step, f_start2, f_stop2):
        """
        Add the same numbers and shift elements
        :param f_start1: start of the first cycle
        :param f_stop1: stop of the first cycle
        :param f_step: cycle step
        :param f_start2: start of the second cycle
        :param f_stop2: stop of the second cycle
        :return: void, change self.field
        """
        for row in range(self.num_row):
            for col in range(f_start1, f_stop1, f_step):
                for col_pair in range(col + f_start2, f_stop2, f_step):
                    if self.field[row][col_pair] > 0 and \
                            self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        self.score += self.field[row][col]
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        for row in range(self.num_row):
            for col_em in range(f_start1, f_stop1, f_step):
                if self.field[row][col_em] == 0:
                    for col in range(col_em + f_start2, f_stop2, f_step):
                        if self.field[row][col] > 0:
                            self.field[row][col_em] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_ver(self, f_start1, f_stop1, f_step, f_start2, f_stop2):
        """
        Add the same numbers and shift elements
        :param f_start1: start of the first cycle
        :param f_stop1: stop of the first cycle
        :param f_step: cycle step
        :param f_start2: start of the second cycle
        :param f_stop2: stop of the second cycle
        :return: void, change self.field
        """
        # Складываем одинаковые числа
        for col in range(self.num_col):
            for row in range(f_start1, f_stop1, f_step):
                for row_pair in range(row + f_start2, f_stop2, f_step):
                    if self.field[row_pair][col] > 0 and \
                            self.field[row][col] == self.field[row_pair][col]:
                        self.field[row][col] *= 2
                        self.field[row_pair][col] = 0
                        self.score += self.field[row][col]
                        break
                    elif self.field[row_pair][col] > 0:
                        break

        # Смещаем элементы, если есть пустые клетки
        for col in range(self.num_col):
            for row_em in range(f_start1, f_stop1, f_step):
                if self.field[row_em][col] == 0:
                    for row in range(row_em + f_start2, f_stop2, f_step):
                        if self.field[row][col] > 0:
                            self.field[row_em][col] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_left(self):
        """
        Move elements to the left
        :return: void, change self.field
        """
        self.move_hor(0, self.num_col - 1, 1, 1, self.num_col)

    def move_right(self):
        """
        Move elements to the right
        :return: void, change self.field
        """
        self.move_hor(self.num_col - 1, 0, -1, -1, -1)

    def move_up(self):
        """
        Move elements up
        :return: void, change self.field
        """
        self.move_ver(0, self.num_row - 1, 1, 1, self.num_row)

    def move_down(self):
        """
        Move elements down
        :return: void, change self.field
        """
        self.move_ver(self.num_row - 1, 0, -1, -1, -1)

    def has_moves(self):
        """
        Check for empty cell
        :return: True if there are empty cell;
                 False if  there are not empty cell
        """
        for row in range(self.num_row):
            for col in range(self.num_col):
                if self.field[row][col] == 0:
                    return True
        return False

    def get_score(self):
        """
        Getting game score
        :return: score of the game
        """
        return self.score

    def get_field(self):
        """
        Randomly assign 2 or 4 to an empty cell
        :return: field of the game
        """
        if random.randint(1, 100) > 10:
            new_num = 2
        else:
            new_num = 4

        while True:
            random_index = randrange(0, self.num_row * self.num_col)
            row = random_index // self.num_col
            col = random_index % self.num_col
            if self.field[row][col] == 0:
                self.field[row][col] = new_num
                break

        return self.field


def main():
    """
    Main function
    :return: void
    """
    game = Game()

    while True:
        # находим максимальную длину числа
        field = game.get_field()
        cell_width = len(str(max(
            cell
            for row in field
            for cell in row
        )))

        print("\033[H\033[J", end="")
        print("Score: ", game.get_score())

        print('\n'.join(
            ' '.join(
                str(cell).rjust(cell_width)
                for cell in row
            )
            for row in field
        ))

        if not game.has_moves():
            print("No available moves left, game over.")
            break

        print("W, A, S, D - move")
        print("Q - exit")

        while True:
            try:
                c = getch.getch()
            except (EOFError, KeyboardInterrupt):
                break

            if c in ('a', 'A'):
                game.move_left()
                break
            elif c in ('d', 'D'):
                game.move_right()
                break
            elif c in ('w', 'W'):
                game.move_up()
                break
            elif c in ('s', 'S'):
                game.move_down()
                break
            elif c in ('q', 'Q'):
                print("Bye!")
                exit()

    print("Bye!")


if __name__ == '__main__':
    main()
