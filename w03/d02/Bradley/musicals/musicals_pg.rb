require 'pg'

jellybeans = PG.connect( dbname: "sandbox" )


query = "INSERT INTO musicals (title, year, composer) VALUES ('Follies', '1971', 'Sondheim');"

jellybeans.exec( query)

jellybeans.close

