require 'pg'
require 'pry'

players_conn = PG.connect( dbname: 'sandbox')

player_file = File.new('data.txt', 'r')
@info_array = []

player_file.each do |player|
  @info_array << player.split(",")
end

@info_array.each do |person|

query_str = "INSERT INTO players (name, age, team, games, points)"
query_str += " VALUES ('#{person[0]}', #{person[1]}, '#{person[2]}', #{person[3]}, "
query_str += "#{person[4]});"

players_conn.exec (query_str)
end


players_conn.close