import unittest
from unittest.mock import Mock
from unittest.mock import patch


class StringTestCase(unittest.TestCase):
    def test_upper(self):
        self.assertEqual("foo".upper(), "FOO")

    def SetUp(self):
        pass

    def tearDown(self):
        pass

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass


@patch("hashlib.md5")
def test_profile(mock_md5):
    mock_md5.return_values = "some_hash"
    mock_md5.assert_called_one_with("some param")
    mock_md5.calls

    Mock(spec=SomeClass)

    profile = Mock(first_name="Ivan")
    print(profile.first_name)

    profile.balance.return_value = 15
    print(profile.balance())

    profile.balance.side_effect = Exception("Some error")
    profile.balance()  # return Exeption






