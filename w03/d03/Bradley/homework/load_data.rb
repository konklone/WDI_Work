require 'pg'

db_conn = PG.connect( dbname: "sandbox")


file = File.new("data.txt", "a+")

file.each do |line|
  row = line.split(",")
  row[0].sub!("'", "''")
  query = "INSERT INTO players (name, age, team, games, points) VALUES ("
  query += "'#{row[0]}', #{row[1].to_i}, '#{row[2]}', #{row[3].to_i}, #{row[4].to_i} );"
  db_conn.exec( query )
end

file.close
db_conn.close


