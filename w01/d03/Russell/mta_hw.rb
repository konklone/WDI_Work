
#master list of stops as array and key
n = ['ts', '34th', '28th-n', '23rd-n', 'us','8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s


#============================================#
def ticket (stops)
	# puts "What is your first stop?"
	puts stops
	start_location = gets.chomp.downcase
	puts "What is your destination?"
	destination = gets.chomp.downcase
	puts " "
	location = [start_location, destination]

end

def  stops_to_location (start_index, stop_index)
	if start_index < stop_index
		stops = stop_index - start_index
	elsif start_index > stop_index
		stops = start_index - stop_index
	else 
		stops = 0
	end
end


if starting_line == ending_line
	same_line = true
else
	same_line = false
end
 
 if same_line = true
 	locations = ticket(starting_line)
elsif same_line = false
	locations 

## define number of stop

#=====================

# num_stops = stops_to_location (first, second)

puts "Choose Your Line: (n) / (l)"
starting_line = gets.chomp.downcase
puts "On which line is your station? (n) / (l)"
ending_line = gets.chomp.downcase


#stops==============

puts "N Line"
location = ticket(n)

start_location = location[0]
destination = location[1]

puts "Starting at #{start_location} and ending at #{destination}"

index_of_start = n.index(start_location)
index_of_destination = n.index(destination)

num_stops = stops_to_location(index_of_start, index_of_destination)
	if num_stops != 0
		puts "Starting at #{start_location} and ending at #{destination}"
		puts "Your trip will be #{num_stops} stops"
	else 
		puts "Get your shit together."
end



