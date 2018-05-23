import datetime
import logging


logging.basicConfig(level=logging.INFO)


class Greeter:
    def greet(self, name):
        name = name.strip()
        name = name.title()

        now = datetime.datetime.now().hour

        if 6 <= now < 12:
            logging.info("Informational message")
            return "Доброе утро " + name

        elif 18 <= now < 22:
            logging.info("Informational message")
            return "Добрый вечер " + name

        elif 22 >= now < 6:
            logging.info("Informational message")
            return "Доброй ночи " + name

        else:
            logging.info("Informational message")
            return "Привет " + name

