require 'PG'
require 'pry'

# read 'data.txt' 
db_conn = PG.connect( dbname: 'sandbox' )

file = File.new('data.txt', 'r')

#populate your database
@data_array = []

data_file.each do |line|
  @data_array << line.split(",")
end

@data_array.each do |person|

query = "INSERT INTO players (name, age, team, games, points)" 
query += "VALUES ('#{person[0]}', #{person[1]}, '#{person[2]}', #{person[3]},"
query += "#{person[4]});"

db_conn.exec( query )
db_conn.close

