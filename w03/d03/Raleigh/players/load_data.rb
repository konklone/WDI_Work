require 'pg'
require 'pry'

# Reads in the CSV information from the `data.txt
file = File.new("data.txt", "r")

# Jeff Adrien,25,HOU,8,21
# name,age,team,games,points

@data_hash = {}
x = 1

file.each do |line|
   entry = line.split(",")
   hash = {x => [entry[0], entry[1], entry[2], entry[3], entry[4].chomp]}
   x += 1
   @data_hash.merge!(hash)
end
   # binding.pry

file.close

db_conn = PG.connect(dbname: "sandbox")

@data_hash.each do |entry|
   query = "INSERT INTO players (name, age, team, games, points) "
   query += "VALUES ('#{entry[1][0].gsub("'","")}', #{entry[1][1]}, '#{entry[1][2]}', #{entry[1][3]}, #{entry[1][4]});"
   # binding.pry
   db_conn.exec(query)
end

# Close db
db_conn.close