require "pg"
require "pry"

#get data into memory.

players_array = Array.new
my_file = File.new("data.txt", 'r')

my_file.each do |x|
    my_array = x.split(",")
    my_array[4] = my_array[4].chomp #clean up newline
    my_array[0] = my_array[0].gsub("'","''") #cleanup names for SQL
    players_array << {:name => my_array[0], :age => my_array[1], :team => my_array[2],:games => my_array[3], :points => my_array[4]}
end

#write data to database
db_conn = PG.connect( dbname: "sandbox_db" )

#SQL Statement is INSERT INTO players (name, age, team, games, points) VALUES ('Reggie Williams',25,'CHA',33,274);



#binding.pry
players_array.each do |x|
    sql = "INSERT INTO players (name, age, team, games, points) VALUES ('#{x[:name]}', #{x[:age]}, '#{x[:team]}', #{x[:games]}, #{x[:points]});"
    db_conn.exec(sql)
end


db_conn.close