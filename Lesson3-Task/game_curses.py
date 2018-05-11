"""
Game 2048 with curses interface
"""
import curses
from copy import deepcopy
from game2048 import Game


class Renderer:
    def __init__(self, game):
        self.stdscr = curses.initscr()
        self.game = game
        self.row = 0

    def print_field(self):
        self.row = 0
        self.stdscr.erase()
        self.stdscr.addstr(self.row, 0, "Score: {}".format(self.game.get_score()))
        self.row += 1

        cell_width = len(str(max(
            cell
            for row in self.game.get_field()
            for cell in row
        )))

        for row in self.game.get_field():
            self.stdscr.addstr(self.row, 0, "{}".format(' '.join(str(cell).rjust(cell_width) for cell in row)))
            self.row += 1

        self.stdscr.addstr(self.row, 0, "W, A, S, D - move\nQ - exit")
        self.row += 2

        self.stdscr.refresh()

    def print_game_over(self):
        self.stdscr.addstr(self.row, 0, "No available moves left, game over.")
        self.row += 1
        self.stdscr.refresh()

    def print_bye(self):
        self.stdscr.addstr(self.row, 0, "Bye!")
        self.stdscr.refresh()

    def get_key(self):
        while True:
            try:
                but = self.stdscr.getch()
            except (EOFError, KeyboardInterrupt):
                break

            if but in (ord('a'), ord('A')):
                self.game.move_left()
                break
            if but in (ord('d'), ord('D')):
                self.game.move_right()
                break
            if but in (ord('w'), ord('W')):
                self.game.move_up()
                break
            if but in (ord('s'), ord('S')):
                self.game.move_down()
                break
            if but in (ord('q'), ord('Q')):
                self.stdscr.addstr(self.row, 0, "Bye!")
                self.stdscr.refresh()
                curses.endwin()
                exit()


def main():
    """
    Main function
    :return: void
    """
    game = Game()
    game.add_random_cell()
    game.add_random_cell()
    renderer = Renderer(game)

    while True:
        old_field = deepcopy(game.get_field())
        renderer.print_field()

        if not game.has_moves():
            renderer.print_game_over()
            break

        renderer.get_key()

        field = game.get_field()

        if field != old_field and game.check_empty():
            game.add_random_cell()

    renderer.print_bye()
    curses.endwin()


if __name__ == '__main__':
    main()
