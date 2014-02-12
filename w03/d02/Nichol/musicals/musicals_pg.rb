require 'pg'

my_connection = PG.connect(dbname: "sandbox_db")

query = "INSERT INTO musicals (title, year, composer) VALUES ('Follies', '1971', 'Sondheim');"

my_connection.exec( query )
my_connection.close


