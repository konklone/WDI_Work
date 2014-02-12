require 'pg'
require 'pry'

file = File.new("data2.txt","r")

db_conn = PG.connect( :dbname => 'sandbox', :host => 'localhost' )

file.each do |line|
  nba_player = []
  nba_player = line.split(",")  

  query = "INSERT INTO players (name, age, team, game, points)"
  query += "VALUES ('#{nba_player[0].gsub("'"," ")}', #{nba_player[1]}, '#{nba_player[2]}', #{nba_player[3]}, #{nba_player[4]});"
    
    db_conn.exec( query )

end 

# 1. All columns for all players from the New York Knicks (NYK)

SELECT * FROM players WHERE team = 'NYK'

# 2. All columns for all players from the Indiana Packers (IND) who are under 26 years old

SELECT * FROM players WHERE team = 'IND' AND age < 26; 

# 3. All columns for all players, ordered from least points scored to most points scored

SELECT * FROM players ORDER BY points DESC; 

# 4. Name and Points per game (points/games), for the players with the top 20 scoring averages (points per game)

SELECT name, (points/game) AS avg FROM players ORDER BY avg DESC LIMIT 20; 


# 5. The average age for all players

SELECT AVG(age) FROM players 

# 6. The average age for all players on the Oklahoma City Thunder (OKC)

SELECT AVG(age) FROM players WHERE team = 'OKC'; 

# 7. The average age for all players who played more than 40 games

SELECT AVG(age) FROM players WHERE game > 40; 

# 8. The team and total points scored from all players on that team (team points), ordered from most team points to least

SELECT team, SUM(points) AS total_points FROM players GROUP BY team ORDER BY total_points DESC; 

#COMMAS SEPARATE COLUMNS!! 

#####Bonus
# 1. Age and the the average points per game for that age, ordered from youngest to oldest

SELECT age, AVG(points/game) AS points_per_game FROM players 
GROUP BY age ORDER BY age ASC;  


# 2. Team and the the number of players who have a scoring average (points per game) above 12 on that team, ordered from most to least

SELECT team, COUNT(*) WHERE (points/game) > 12 FROM players GROUP BY team ORDER BY COUNT DESC; 





