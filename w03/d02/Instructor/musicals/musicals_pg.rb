require 'pg'

jellybeans = PG.connect( dbname: "sandbox", host: "localhost" )

# Follies
# Sondheim
# 1971

title = gets.chomp
year = gets.chomp
composer = gets.chomp
comments = gets.chomp

query_str = "insert into musicals (title, year, composer) values('#{title}', '#{year}', '#{composer}');"

jellybeans.exec( query_str )

jellybeans.close