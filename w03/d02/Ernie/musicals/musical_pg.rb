require 'pg'

jellybeans = PG.connect( dbname: "sandbox", host: "localhost")

query_str = "INSERT INTO musical (title,year,composer) VALUES ('Follies' ,'1971','Sandhiem');"

jellybeans.exec(query_str)

jellybeans.close