# Read data in 'data.txt' CSV and populate 'players' 
# table with respective data organized

require 'pg'

# Instantiates new File object for data.txt CSV
file = File.new("data.txt", "r")

# Empty hash for data extracted from file
@csv_data = {}
# Enumerate over file, split each line into an array,
# and store that array in @csv_data hash with name as
# they key (at index 0 in the array)
file.each do |line|
  line = line.chomp.gsub("'","''") # removes \n, ensures no query string issues
  ary = line.split(",")
  @csv_data[ary[0]] = ary
end

# Closes instance of File object
file.close

# Instantiates new PG database connection object
@sandbox_conn = PG.connect( dbname: 'sandbox' )

# Enumerates over @csv_data, interpolating each
# array value into a query string that is 
# passed through the PG connection and inserted
# into the players table in sandbox
@csv_data.each do |name, data_array|
  name = data_array[0]
  age = data_array[1]
  team = data_array[2]
  games = data_array[3]
  points = data_array[4]

  query = "INSERT INTO players "
  query += "(name, age, team, games, points) VALUES "
  query += "('#{name}', #{age}, '#{team}', #{games}, #{points});"

  @sandbox_conn.exec( query )

end

# Closes instance of PG sandbox connection object
@sandbox_conn.close