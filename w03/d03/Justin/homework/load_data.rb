require 'pg'
require 'pry'




file = File.new("data.txt","a+")
db_conn = PG.connect(:dbname => "sandbox")

file.each do |line|
	player = line.split ","
	sql = "INSERT INTO players (name, age, team, games, points) "
	sql += "VALUES ('#{player[0].gsub("'","''")}', #{player[1]}, "
	sql += "'#{player[2]}', #{player[3]}, #{player[4].chomp});"	
	db_conn.exec(sql)

end


file.close
db_conn.close


