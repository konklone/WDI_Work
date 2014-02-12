require 'pg'

jellybeans = PG.connect( dbname: "sandbox" )

# Follies
# Sondheim
# 1971

query_str = "INSERT INTO musicals (title, year, composer) values('Follis', '1971', 'Sondheim');"

jellybeans.exec( query_str )

jellybeans.close