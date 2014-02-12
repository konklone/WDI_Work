require 'pry'
require 'PG'

file = File.new("data.txt", "a+")

db_connect = PG.connect(dbname: 'sandbox')

file.each do |line|
	row = line.split(",")
	name = row[0].gsub("'","''")
	age = row[1].to_i
	team = row[2]
	games = row[3].to_i
	points = row[4].to_i

	query = "INSERT INTO players"
	query += "(name, age, team, games, points) VALUES"
	query += "('#{name}', '#{age}','#{team}', '#{games}', '#{points}');"

	db_connect.exec( query )
end