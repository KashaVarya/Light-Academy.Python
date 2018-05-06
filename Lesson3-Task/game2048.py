"""
Game 2048
"""
import random
from random import randrange
from copy import deepcopy
import getch


class Game:
    """
    Main class of the program
    """
    def __init__(self):
        self.field = [[0] * 4 for _ in range(4)]
        self.num_row = len(self.field)
        self.num_col = max(len(row) for row in self.field)
        self.score = 0

    def move_hor(self, param):
        """
        Add the same numbers and shift elements
        :param param: start and stop of the first cycle, cycle step,
                      start and stop of the second cycle
        :return: void, change self.field
        """
        for row in range(self.num_row):
            for col in range(param[0], param[1], param[2]):
                for col_pair in range(col + param[3], param[4], param[2]):
                    if self.field[row][col_pair] > 0 and \
                            self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        self.score += self.field[row][col]
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        for row in range(self.num_row):
            for col_em in range(param[0], param[1], param[2]):
                if self.field[row][col_em] == 0:
                    for col in range(col_em + param[3], param[4], param[2]):
                        if self.field[row][col] > 0:
                            self.field[row][col_em] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_ver(self, param):
        """
        Add the same numbers and shift elements
        :param param: start and stop of the first cycle, cycle step,
                      start and stop of the second cycle
        :return: void, change self.field
        """
        for col in range(self.num_col):
            for row in range(param[0], param[1], param[2]):
                for row_pair in range(row + param[3], param[4], param[2]):
                    if self.field[row_pair][col] > 0 and \
                            self.field[row][col] == self.field[row_pair][col]:
                        self.field[row][col] *= 2
                        self.field[row_pair][col] = 0
                        self.score += self.field[row][col]
                        break
                    elif self.field[row_pair][col] > 0:
                        break

        for col in range(self.num_col):
            for row_em in range(param[0], param[1], param[2]):
                if self.field[row_em][col] == 0:
                    for row in range(row_em + param[3], param[4], param[2]):
                        if self.field[row][col] > 0:
                            self.field[row_em][col] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_left(self):
        """
        Move elements to the left
        :return: void, change self.field
        """
        self.move_hor([0, self.num_col - 1, 1, 1, self.num_col])

    def move_right(self):
        """
        Move elements to the right
        :return: void, change self.field
        """
        self.move_hor([self.num_col - 1, 0, -1, -1, -1])

    def move_up(self):
        """
        Move elements up
        :return: void, change self.field
        """
        self.move_ver([0, self.num_row - 1, 1, 1, self.num_row])

    def move_down(self):
        """
        Move elements down
        :return: void, change self.field
        """
        self.move_ver([self.num_row - 1, 0, -1, -1, -1])

    def check_empty(self):
        """
        Check for empty cell
        :return: True if there is empty cell;
                 False if  there is not empty cell
        """
        for row in range(self.num_row):
            for col in range(self.num_col):
                if self.field[row][col] == 0:
                    return True
        return False

    def has_moves(self):
        """
        Check the availability of moves
        :return: True if there is move
                 False if there is not move
        """
        for row in range(self.num_row - 1):
            for col in range(self.num_col - 1):
                if self.field[row][col] == self.field[row][col + 1] or \
                        self.field[row][col] == self.field[row + 1][col]:
                    return True

        for col in range(self.num_col - 1):
            if self.field[self.num_row - 1][col] == \
                    self.field[self.num_row - 1][col + 1]:
                return True

        for row in range(self.num_row - 1):
            if self.field[row][self.num_col - 1] == \
                    self.field[row + 1][self.num_col - 1]:
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
        Getting game field
        :return: game field
        """
        return self.field

    def add_random_cell(self):
        """
        Randomly assign 2 or 4 to an empty cell
        :return: void
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


def print_field(game, field):
    """
    Print field
    :param game: reference to object game
    :param field: reference to object field
    :return: void
    """
    print("\033[H\033[J", end="")
    print("Score: ", game.get_score())

    cell_width = len(str(max(
        cell
        for row in field
        for cell in row
    )))

    print('\n'.join(
        ' '.join(
            str(cell).rjust(cell_width)
            for cell in row
        )
        for row in field
    ))

    print("W, A, S, D - move")
    print("Q - exit")


def main():
    """
    Main function
    :return: void
    """
    game = Game()
    game.add_random_cell()
    game.add_random_cell()

    while True:
        old_field = deepcopy(game.get_field())
        print_field(game, old_field)

        if not game.has_moves():
            print("No available moves left, game over.")
            break

        while True:
            try:
                but = getch.getch()  # pylint: disable=c-extension-no-member
            except (EOFError, KeyboardInterrupt):
                break

            if but in ('a', 'A'):
                game.move_left()
                break
            elif but in ('d', 'D'):
                game.move_right()
                break
            elif but in ('w', 'W'):
                game.move_up()
                break
            elif but in ('s', 'S'):
                game.move_down()
                break
            elif but in ('q', 'Q'):
                print("Bye!")
                exit()

        field = game.get_field()

        if field != old_field and game.check_empty():
            game.add_random_cell()

    print("Bye!")


if __name__ == '__main__':
    main()
