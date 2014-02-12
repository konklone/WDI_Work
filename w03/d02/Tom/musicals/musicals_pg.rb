require 'pg'

# This will establish a connection and return a database connection object
jellybeans = PG.connect( dbname: 'sandbox' )


# Follies
# Sondheim
# 1971

# This would be considered implementation details
query_str = "INSERT INTO musicals (title, year, composer) VALUES ('Follies', '1971', 'Sondheim');"


jellybeans.exec( query_str )

jellybeans.close