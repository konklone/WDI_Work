require 'active_record'
require 'pry'
# connect to file
# read file
# store as readable/usable ?
# close file

# transfer to database

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "daviskoh",
  :password => "",
  :database => "sandbox"
)

require_relative './player.rb'


players = File.new("data.txt", "r")

# iterate over players
players.each do |line|
		# split line by "," and store in var
		array = line.split(",")
		# set each as semantic var's
		name = array[0]
		age = array[1].to_i
		team = array[2]
		games = array[3].to_i
		points = array[4].chomp.to_f
		# transfer to db
		player = Player.new(name: name, age: age, team: team, games: games, points: points)
		player.save
end

