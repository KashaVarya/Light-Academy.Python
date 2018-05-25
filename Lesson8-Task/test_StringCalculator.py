import unittest
from StringCalculator import StringCalculator


class StringCalculatorTestCase(unittest.TestCase):
    def test_sum(self):
        result = StringCalculator().add("12 34 20 4", " ")
        self.assertEqual(result, 70)

    def test_empty(self):
        result = StringCalculator().add("", " ")
        self.assertEqual(result, 0)
