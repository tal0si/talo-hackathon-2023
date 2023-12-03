import unittest
from unittest.mock import MagicMock, patch
from src.talosi_hackaton_entrypoint import TalosiHackatonEntrypoint

class TestTalosiHackatonEntrypoint(unittest.TestCase):

    @patch('src.talosi_hackaton_entrypoint.psycopg2.connect')
    def setUp(self, mock_connect):
        """
        Set up the test environment for the TalosiHackatonEntrypoint class.

        Parameters:
            mock_connect (MagicMock): A mock object for the 'psycopg2.connect' function.

        Returns:
            None
        """
        self.mock_cursor = MagicMock()
        self.mock_connection = MagicMock()
        self.mock_connection.cursor.return_value = self.mock_cursor

        mock_connect.return_value = self.mock_connection

        self.app = TalosiHackatonEntrypoint()

    def test_print_hello_value(self):
        """
        Execute the `print_hello_value` method and assert that the correct SQL query is executed and the correct value is fetched from the database.
        """
        self.mock_cursor.fetchone.return_value = ["Hello, World!"]

        self.app.print_hello_value()

        self.mock_cursor.execute.assert_called_with("SELECT hello FROM hello_world")

        self.mock_cursor.fetchone.assert_called()

    def test_close(self):
        """
        Close the test by closing the app, closing the mock cursor, and closing the mock connection.
        """
        self.app.close()
        self.mock_cursor.close.assert_called()
        self.mock_connection.close.assert_called()

if __name__ == '__main__':
    unittest.main()
