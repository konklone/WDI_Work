require 'pg'

sandbox_conn = PG.connect( dbname: "sandbox" )

query_str = "INSERT INTO musicals "
query_str += "(title, year, composer) VALUES "
query_str += "('Follies', '1971', 'Sondheim');"

sandbox_conn.exec( query_str )

sandbox_conn.close