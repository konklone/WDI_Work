require "pg"

# Establish a connect with our sandbox database
jellybeans = PG.connect(dbname: "sandbox")

# Add data to the existing table musicals
query_str = "INSERT INTO musicals (title, year, composer) VALUES ('Follies', '1971', 'Sondheim');"
jellybeans.exec(query_str)

# Close database 
jellybeans.close