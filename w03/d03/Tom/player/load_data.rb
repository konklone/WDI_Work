# Require the CSV class and pry
require 'CSV'
require 'pry'
require 'pg'



# Open the connection to the database sandbox
db_conn = PG.connect( dbname: 'sandbox')

# Read the data.txt file using the CSV class.  No headers in file, headers set to false
# perform a loop on the data.txt file to parse the data
csv_text = File.read("data.txt")
csv = CSV.parse(csv_text, :headers => true)



csv.each do |column|
  name = column['name']
  age = column['age']
  team = column['team']
  games = column['games']
  points = column['points']

  #make sure to escape single quotes in names
  name = name.gsub(/'/, "''")

  # take the results assign them to a variable.  The variable is set a an sql string
  # that will populate the players table in the sandbox database
  sql = "INSERT INTO players(name, age, team, games, points) VALUES('#{name}', #{age}, '#{team}', #{games}, #{points})"


  db_conn.exec(sql)
end


#binding.pry





#binding.pry

# execute the sql string


# close the connection to the database
db_conn.close




