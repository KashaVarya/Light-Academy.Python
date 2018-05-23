import unittest
from unittest.mock import patch
import hash


class MD5TestCase(unittest.TestCase):
    @patch("hash.md5")
    def test_some(self, mock_md5):
        hash.hash_md5("Some Str")
        mock_md5.assert_called_with("Some Str".encode())
