require 'pg'

#returns a database connection object 
jellybeans = PG.connect( dbname: "sandbox")

# Follies
# Sondheim
# 1971

query_str = "INSERT INTO musicals "
query_str += "(title, year, composer) "
query_str += " VALUES ('Follies', '1971', 'Sondheim');"


jellybeans.exec( query_str )

jellybeans.close