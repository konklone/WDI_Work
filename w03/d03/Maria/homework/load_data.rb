require 'pg'

db_conn = PG.connect(:dbname => 'sandbox', :host => 'localhost')

file = File.new("data.txt", "a+")
  file.each do |line|
    player = line.split(",") #taking string and making it onto an array
  sql = "INSERT INTO players (name, age, team, games, points)"
  sql += "VALUES ( '#{player[0].gsub("'"," ")}', '#{player[1]}', '#{player[2]}','#{player[3]}','#{player[4]}' );"
  
db_conn.exec(sql) #this will execute the string into the database
end

file.close
db_conn.close

#{player[0].gsub("'","'")}