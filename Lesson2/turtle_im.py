"""
Turtle example
"""

from turtle import seth, fd, color, speed  # pylint: disable=no-name-in-module
from turtle import setpos, up, down, done  # pylint: disable=no-name-in-module
import random


def draw_hilbert(fig_order, dir1, dir2):
    """
    Draw Hilbert figure
    param:
    n - int
    dir1 - int
    dir2 - int
    """

    draw_hilbert.counter += 1

    if fig_order > 1:
        draw_hilbert(fig_order - 1, dir2, dir1)
    if dir1 == 0:
        seth(90 - dir2)
    else:
        seth(dir1)
    fd(LEN_ST)

    if fig_order > 1:
        draw_hilbert(fig_order - 1, dir1, dir2)
    if dir1 == 0:
        seth(dir2)
    else:
        seth(90 - dir1)
    fd(LEN_ST)

    if fig_order > 1:
        draw_hilbert(fig_order - 1, dir1, dir2)
    if dir1 == 0:
        seth(90 + dir2)
    else:
        seth(-dir1)
    fd(LEN_ST)
    if fig_order > 1:
        draw_hilbert(fig_order - 1, -dir2, -dir1)

    print(draw_hilbert.counter)
    if draw_hilbert.counter % 20 == 0:
        color(random.choice(COL))


COL = [
    "#ED0594",
    "#F7801E",
    "#EBD80E",
    "#29F25F",
    "#05EDC3",
    "#334EE8",
    "#8E33E8"
]
LEN_ST = 10
speed(0)
up()
setpos(-250, -250)
down()
color(random.choice(COL))
draw_hilbert.counter = 0
draw_hilbert(int(input("Enter figure order: ")), 0, 90)
done()
