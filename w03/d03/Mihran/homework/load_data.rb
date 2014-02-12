require 'pg'

data = File.new("data.txt", "r")

db_conn = PG.connect(:dbname => 'sandbox', :host => 'localhost')

data.each do |line|
  item_info = []
  item_info = line.split(",")

  sql = " INSERT INTO players (name, age, team, games, points)" 
  sql += "VALUES ('#{item_info[0].gsub("'"," ")}', #{item_info[1]},  '#{item_info[2]}',  #{item_info[3]},  #{item_info[4]});"

  db_conn.exec(sql)

end


