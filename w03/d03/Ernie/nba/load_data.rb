require "pg"
require 'csv'
require 'pry'

db_conn = PG.connect(dbname: "sandbox", host: "localhost")

file = File.open("data.csv", "r")
nba = []


fields_to_insert = %w{ name age team games points }
rows_to_insert = []

CSV.foreach("data.csv", headers: true) do |row|
  row_to_insert = row.to_hash.select { |k, v| fields_to_insert.include?(k) }
  rows_to_insert << row_to_insert
end
nba = rows_to_insert

nba = line.chomp.gsub("'","''")

nba.each do |hash|
  query = "INSERT INTO players (name,age,team,games,points) 
  VALUES ( '#{hash["name"]}', '#{hash["age"]}','#{hash["team"]}','#{hash["games"]}','#{hash["points"]}');"
  db_conn.exec( query )
end

db_conn.close

binding.pry
