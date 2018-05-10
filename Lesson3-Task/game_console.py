"""
Game 2048 with plain console interface
"""
from copy import deepcopy
import getch
from game2048 import Game


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
