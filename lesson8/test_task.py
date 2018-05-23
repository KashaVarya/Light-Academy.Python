import unittest
from greeter import Greeter
from unittest.mock import patch


class GreeterTestCase(unittest.TestCase):
    @patch("greeter.datetime")
    def test_greet(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 12
        result = Greeter().greet("Varya")
        self.assertEqual(result, "Привет Varya")

    @patch("greeter.datetime")
    def test_spaces(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 13
        result = Greeter().greet("    Varya      ")
        self.assertEqual(result, "Привет Varya")

    @patch("greeter.datetime")
    def test_title(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 14
        result = Greeter().greet("varya")
        self.assertEqual(result, "Привет Varya")

    @patch("greeter.datetime")
    def test_morn(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 8
        result = Greeter().greet("Varya")
        self.assertEqual(result, "Доброе утро Varya")

    @patch("greeter.datetime")
    def test_evn(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 18
        result = Greeter().greet("Varya")
        self.assertEqual(result, "Добрый вечер Varya")

    @patch("greeter.datetime")
    def test_nigth(self, mock_datetime):
        mock_datetime.datetime.now.return_value.hour = 4
        result = Greeter().greet("Varya")
        self.assertEqual(result, "Доброй ночи Varya")

    @patch("greeter.logging")
    def test_log(self, mock_logging):
        Greeter().greet("Varya")
        mock_logging.info.assert_called_with("Informational message")
