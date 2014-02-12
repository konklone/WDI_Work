require 'pg' #establishing a connection to our db called sandbox

#connect to database
#return value of this database connection object thru variable. 
jellybeans = PG.connect( dbname: "sandbox" ) 

query_str = "insert into musicals(title, year, composer) values('Follies', '1971', 'Sondheim');" # insert nto our table
jellybeans.exec( query_str )

jellybeans.close
#Follies
#Sonheim
#1971