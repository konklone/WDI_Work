require "PG"
require "pry"

file = File.new("data.txt", "r")
db_conn = PG.connect( dbname: "sandbox" )





file.each do |line|

  item_info = line.split(",")
  item_info
  db_conn.exec( "INSERT INTO players (name, age, team, games, points) VALUES ('#{item_info[0]}',#{item_info[1]},'#{item_info[2]}',#{item_info[3]},#{item_info[4].chomp});" )


  end

  db_conn.close


file.close






