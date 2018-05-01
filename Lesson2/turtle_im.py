from turtle import *
import random


def fig(n, dir1, dir2):
    global i
    i += 1
    if n > 1:
        fig(n-1, dir2, dir1)
    if dir1 == 0:
        seth(90-dir2)
    else:
        seth(dir1)
    fd(len_st)

    if n > 1:
        fig(n-1, dir1, dir2)
    if dir1 == 0:
        seth(dir2)
    else:
        seth(90-dir1)
    fd(len_st)

    if n > 1:
        fig(n-1, dir1, dir2)
    if dir1 == 0:
        seth(90+dir2)
    else:
        seth(-dir1)
    fd(len_st)
    if n > 1:
        fig(n-1, -dir2, -dir1)
    if i % 20 == 0:
        color(random.choice(col))


col = ["#ED0594", "#F7801E", "#EBD80E", "#29F25F", "#05EDC3", "#334EE8", "#8E33E8"]
len_st = 10
i = 0
speed(0)
up()
setpos(-250, -250)
down()
color(random.choice(col))
fig(int(input()), 0, 90)
done()
