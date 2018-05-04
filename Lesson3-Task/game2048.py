import curses
import random
from random import randrange


class Game:
    def __init__(self):
        self.field = [[0]*4 for _ in range(4)]
        self.num_row = len(self.field)
        self.num_col = max(len(row) for row in self.field)


    def move(self):


    def move_left(self):
        # Складываем одинаковые числа
        for row in range(self.num_row):
            for col in range(self.num_col - 1):
                for col_pair in range(col + 1, self.num_col):
                    if self.field[row][col_pair] > 0 and self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        # Смещаем элементы влево, если есть пустые клетки
        for row in range(self.num_row):
            for col_em in range(self.num_col - 1):
                if self.field[row][col_em] == 0:
                        for col in range(col_em + 1, self.num_col):
                            if self.field[row][col] > 0:
                                self.field[row][col_em] = self.field[row][col]
                                self.field[row][col] = 0
                                break

    def move_right(self):
        # Складываем одинаковые числа
        for row in range(self.num_row):
            for col in range(self.num_col - 1, 0, -1):
                for col_pair in range(col - 1, -1, -1):
                    if self.field[row][col_pair] > 0 and self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        # Смещаем элементы вправо, если есть пустые клетки
        for row in range(self.num_row):
            for col_em in range(self.num_col - 1, 0, -1):
                if self.field[row][col_em] == 0:
                    for col in range(col_em - 1, -1, -1):
                        if self.field[row][col] > 0:
                            self.field[row][col_em] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_up(self):
        # Складываем одинаковые числа
        for row in range(self.num_row):
            for col in range(self.num_col - 1):
                for col_pair in range(col + 1, self.num_col):
                    if self.field[row][col_pair] > 0 and self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        # Смещаем элементы вверх, если есть пустые клетки
        for row in range(self.num_row):
            for col_em in range(self.num_col - 1):
                if self.field[row][col_em] == 0:
                        for col in range(col_em + 1, self.num_col):
                            if self.field[row][col] > 0:
                                self.field[row][col_em] = self.field[row][col]
                                self.field[row][col] = 0
                                break

    def move_down(self):
        raise NotImplementedError

    def has_moves(self):
        count = False

        # Проверяем, есть ли пустые клетки
        for row in range(self.num_row):
            for col in range(self.num_col):
                if self.field[row][col] == 0:
                    if count:
                        return True
                    else:
                        count = True
        return False

    def get_score(self):
        raise NotImplementedError

    def get_field(self):
        for _ in range(2):
            # Определяем вероятность появления 2 или 4
            if random.randint(1, 100) > 10:
                new_num = 2
            else:
                new_num = 4

            # Рандомно присваиваем новые значения в пустые клетки
            while True:
                random_index = randrange(0, self.num_row * self.num_col)
                row = random_index // self.num_col
                col = random_index % self.num_col
                if self.field[row][col] == 0:
                    self.field[row][col] = new_num
                    break

        return self.field


def main():
    game = Game()

    while True:
        # находим максимальную длину числа
        field = game.get_field()
        cell_width = len(str(max(
            cell
            for row in field
            for cell in row
        )))

        # print("\033[H\033[J", end="")
        # print("Score: ", game.get_score())

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

        print("L, R, U, D - move")
        print("Q - exit")

        try:
            c = input("> ")
        except (EOFError, KeyboardInterrupt):
            break

        if c in ('l', 'L'):
            game.move_left()
        elif c in ('r', 'R'):
            game.move_right()
        elif c in ('u', 'U'):
            game.move_up()
        elif c in ('d', 'D'):
            game.move_down()
        elif c in ('q', 'Q'):
            break

    print("Bye!")


if __name__ == '__main__':
    main()
