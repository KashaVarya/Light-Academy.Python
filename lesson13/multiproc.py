import multiprocessing


def test(num):
    print('worker', num)


if __name__ == '__main__':
    proccess = []
    for i in range(5):
        proccess.append(multiprocessing.Process(target=test, args=(i,)))
    for pr in proccess:
        pr.start()
