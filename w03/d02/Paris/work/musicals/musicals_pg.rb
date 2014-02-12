require 'pg'

# connecting to the database object called "sandbox"
jellybeans = PG.connect( dbname: "sandbox" )

query_str = "insert into musicals (title, year, composer) values ('Follies', '1971', 'Sondheim' );"
jellybeans.exec( query_str )

jellybeans.close