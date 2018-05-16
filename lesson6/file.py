with open("/home/python/Рабочий стол/GIF.gif", "rb") as f:
    print(f.read(10))

with open("/home/python/Рабочий стол/PNG.png", "rb") as f:
    print(f.read(10))

with open("/home/python/Рабочий стол/JPEG.jpeg", "rb") as f:
    print(f.read(10))

f.write(b"0987GIF")

