require 'pg'


jellybeans = PG.connect( dbname: "sandbox" )

title = gets.chomp
year = gets.chomp
composer = gets.chomp
comments = gets.chomp


query_str = "insert into musicals (title, year, composer) values('Follies', '1971', 'Sondheim');"

jellybeans.exec( query_str )

jellybeans.close