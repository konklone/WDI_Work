require 'pg'

jellybeans = PG.connect( dbname: "sandbox", host: "localhost")

title = gets.chomp
year = gets.chomp
composer = gets.chomp 
comments = gets.chomp 

query_str = "INSERT INTO musicals (title, year}, composer) VALUES('#{title}', '#{year}', '#{composer}');"
jellybeans.exec( query_str )

jellybeans.close 