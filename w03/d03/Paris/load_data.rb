require 'pg'

# bring the data into memory
# create an array to format the data to put into the table. 


db_conn = PG.connect( dbname: "sandbox" )

file = File.new("data.txt", "a+")
file.each do |line|
  player_array = line.split(",")

query = "INSERT INTO players "
query += "(name,age,team,games,points) VALUES"
query += "("
query += "'#{player_array[0].gsub("'", "")}', #{player_array[1]},"
query += "'#{player_array[2]}', #{player_array[3]},"
query += "#{player_array[4]}"
query += ");"

# this does the actual inserting
db_conn.exec( query )

end

db_conn.close

file.close


