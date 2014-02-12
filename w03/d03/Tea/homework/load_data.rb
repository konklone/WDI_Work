# for each line in the csv file,
#   put it to an array
#   where each index loads in to equal part of the table

require 'csv'
require 'pry'
require 'pg'


FILENAME = 'sandbox'

#load file
db_conn = PG.connect(dbname: FILENAME)

# load data.txt and parse using CSV tool
csv_text = File.read('data.txt')
csv = CSV.parse(csv_text, :headers => true)
# added "name,age,team,games" at top of data.txt file and then called this
csv.each do |row|  
    query_str = "INSERT INTO players "
    query_str += "(name, age, team, games, points) VALUES"
    query_str += "("
    query_str += "'#{row['name'].gsub("'",'\\\'')}', #{row['age']},"
    query_str += "'#{row['team']}', #{row['games']},"
    query_str += "#{row['points']}"
    query_str += ");"

    db_conn.exec( query_str)

end

db_conn.close
