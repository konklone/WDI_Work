require 'pg'

file = File.new("data.txt", "r")

db_conn = PG.connect( dbname: "sandbox" )
file.each do |line|
  row = line.split(",")
  name = row[0].gsub("'", "''")
  age = row[1].to_i
  team = row[2]
  games = row[3].to_i
  points = row[4].chomp.to_i
 
  query_str ="INSERT INTO players (name, age, team, games, points) "
  query_str += "VALUES ('#{name}', #{age}, '#{team}', #{games}, #{points});"
  db_conn.exec( query_str )
end

db_conn.close
file.close
