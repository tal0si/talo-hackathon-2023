import psycopg2

class TalosiHackatonEntrypoint:
    def __init__(self):
        self.connection = psycopg2.connect(dbname="postgres", user="postgres", password="postgres", host="database")
        self.cursor = self.connection.cursor()

    def run(self):
        self.print_hello_value()
        self.close()

    def print_hello_value(self):
        sql = "SELECT hello FROM hello_world"
        self.cursor.execute(sql)
        hello_value = self.cursor.fetchone()[0]
        print(hello_value)

    def close(self):
        self.cursor.close()
        self.connection.close()

if __name__ == "__main__":
    app = TalosiHackatonEntrypoint()
    app.run()
