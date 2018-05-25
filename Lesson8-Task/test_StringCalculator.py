import unittest
from StringCalculator import StringCalculator


class StringCalculatorTestCase(unittest.TestCase):
    def test_sum(self):
        result = StringCalculator().add("12 34 20 4")
        self.assertEqual(result, 70)

    def test_empty(self):
        result = StringCalculator().add("")
        self.assertEqual(result, 0)

    def test_only_one(self):
        result = StringCalculator().add("3")
        self.assertEqual(result, 3)

    def test_comma(self):
        result = StringCalculator().add("12,15,4")
        self.assertEqual(result, 31)
