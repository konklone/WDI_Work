require 'pg'

jellybeans = PG.connect( dbname: "sandbox" )

# Follies
# Sondheim
# 1971

title = gets.chomp
year = gets.chomp
composer = gets.chomp
comments = gets.chomp


query_str = "INSERT INTO musicals (title, year, composer) VALUES('Follies', '1971', 'Sondheim');"
# SQL commands should be in CAPSLOCK 

jellybeans.exec( query_str )

jellybeans.close

