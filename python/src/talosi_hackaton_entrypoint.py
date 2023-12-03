import psycopg2

class TalosiHackatonEntrypoint:
    """
    Initializes a new instance of the class.
    This function establishes a connection to the PostgreSQL database using the provided credentials and initializes a cursor for executing queries.
    """
    
    def __init__(self):
        """
        Initializes a new instance of the class.
        This function establishes a connection to the PostgreSQL database using the provided credentials and initializes a cursor for executing queries.
        """
        self.connection = psycopg2.connect(dbname="postgres", user="postgres", password="postgres", host="database")
        self.cursor = self.connection.cursor()

    def run(self):
        """
        Runs the function, executing the 'print_hello_value()' method and then closing the function.

        Parameters:
            None

        Returns:
            None
        """
        self.print_hello_value()
        self.close()

    def print_hello_value(self):
        """
        Retrieves the value of 'hello' from the 'hello_world' table and prints it.

        Parameters:
            self (object): The instance of the class.
        
        Returns:
            None
        """
        sql = "SELECT hello FROM hello_world"
        self.cursor.execute(sql)
        hello_value = self.cursor.fetchone()[0]
        print(hello_value)

    def close(self):
        """
        Closes the connection to the database and releases any resources used by the database cursor.

        Returns:
            None
        """
        self.cursor.close()
        self.connection.close()