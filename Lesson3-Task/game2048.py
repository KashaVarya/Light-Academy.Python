import random
from random import randrange
import getch


class Game:
    def __init__(self):
        self.field = [[0]*4 for _ in range(4)]
        self.num_row = len(self.field)
        self.num_col = max(len(row) for row in self.field)
        self.score = 0

    def move_hor(self, f_start1, f_stop1, f_step, f_start2, f_stop2):
        # Складываем одинаковые числа
        for row in range(self.num_row):
            for col in range(f_start1, f_stop1, f_step):
                for col_pair in range(col + f_start2, f_stop2, f_step):
                    if self.field[row][col_pair] > 0 and self.field[row][col] == self.field[row][col_pair]:
                        self.field[row][col] *= 2
                        self.field[row][col_pair] = 0
                        self.score += self.field[row][col]
                        break
                    elif self.field[row][col_pair] > 0:
                        break

        # Смещаем элементы, если есть пустые клетки
        for row in range(self.num_row):
            for col_em in range(f_start1, f_stop1, f_step):
                if self.field[row][col_em] == 0:
                    for col in range(col_em + f_start2, f_stop2, f_step):
                        if self.field[row][col] > 0:
                            self.field[row][col_em] = self.field[row][col]
                            self.field[row][col] = 0
                            break

    def move_ver(self, f_start1, f_stop1, f_step, f_start2, f_stop2):
        # Складываем одинаковые числа
        for col in range(self.num_col):
            for row in range(f_start1, f_stop1, f_step):
                for row_pair in range(row + f_start2, f_stop2, f_step):
                    if self.field[row_pair][col] > 0 and self.field[row][col] == self.field[row_pair][col]:
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
        self.move_hor(0, self.num_col - 1, 1, 1, self.num_col)

    def move_right(self):
        self.move_hor(self.num_col - 1, 0, -1, -1, -1)

    def move_up(self):
        self.move_ver(0, self.num_row - 1, 1, 1, self.num_row)

    def move_down(self):
        self.move_ver(self.num_row - 1, 0, -1, -1, -1)

    def has_moves(self):
        # Проверяем, есть ли пустые клетки
        count = False
        for row in range(self.num_row):
            for col in range(self.num_col):
                if self.field[row][col] == 0:
                    if count:
                        return True
                    else:
                        count = True
        return False

    def get_score(self):
        return self.score

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
