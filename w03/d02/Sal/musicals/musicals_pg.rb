require 'pg'

jellybeans = PG.connect( :dbname => "sandbox" )

# Follies 
# Sondheim
# 1971 



query_str = "insert into musicals (title, year, composer) values ('Follies', '1971', 'Sondheim');"

jellybeans.exec( query_str )

jellybeans.close

