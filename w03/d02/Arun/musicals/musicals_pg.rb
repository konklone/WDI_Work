require "pg"

jellybeans = PG.connect( dbname: "sandbox" )

query_str = "INSERT INTO musicals (title, year, composer) VALUES ('follies', '1971', 'sondheim');"

jellybeans.exec( query_str )

jellybeans.close