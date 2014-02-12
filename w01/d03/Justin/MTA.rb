
#Arrays and Hashes predefine
n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

#=====================
#Start of methods

#takes in starting and ending points
def which_station(stops)
	puts "The stops on this line are:"
	puts stops
	puts " "
	puts "Please choose a station."
	station = gets.chomp.downcase
end


#Determines the number of stops between two stations by array index
def stops_to_location(start_index, stop_index)
	if start_index < stop_index
		stops = stop_index - start_index
	elsif start_index > stop_index
		stops = start_index - stop_index
	else
		stops = 0
	end
end



#End of methods
#=========================


puts "Welcome to the subway!"
puts "What line is your starting location on? (N/L/S):"
starting_line = gets.chomp.downcase

#Determines which rail line the user is starting at
case starting_line
	when "n"
		starting_station = which_station(n)
	when "l"
		starting_station = which_station(l)
	when "s"
		starting_station = which_station(s)
end


puts "On which line is your destination? (N/L):"
destination_line = gets.chomp.downcase

#Determines which rail line the user is going to
case destination_line
	when "n"
		destination_station = which_station(n)
	when "l"
		destination_station = which_station(l)
	when "s"
		destination_station = which_station(s)
end


#Finds the array index of the starting station in the array for that rail line
case starting_line
	when "n"
		index_of_start = n.index(starting_station)
	when "l"
		index_of_start = l.index(starting_station)
	when "s"
		index_of_start = s.index(starting_station)
end


#Finds the array index of the starting station in the array for that rail line
case destination_line
	when "n"
		index_of_destination = n.index(destination_station)
	when "l"
		index_of_destination = l.index(destination_station)
	when "s"
		index_of_destination = s.index(destination_station)
end

n_index_of_us = n.index("us")
l_index_of_us = l.index("us")
s_index_of_us = s.index("us")


#Determines if the starting location and destinations are on the same rail line
if starting_line == destination_line
	same_line = true
else
	same_line = false
end

if same_line == true
	num_stops = stops_to_location(index_of_start, index_of_destination)
end

if same_line == false
	case starting_line
		when "n"
			start_to_us = stops_to_location(index_of_start, n_index_of_us)
		when "l"
			start_to_us = stops_to_location(index_of_start, l_index_of_us)
		when "s"
			start_to_us = stops_to_location(index_of_start, s_index_of_us)
	end
	case destination_line
		when "n"
			destination_to_us= stops_to_location(index_of_destination, n_index_of_us)
		when "l"
			destination_to_us = stops_to_location(index_of_destination, l_index_of_us)
		when "s"
			destination_to_us = stops_to_location(index_of_destination, s_index_of_us)
	end
	num_stops = start_to_us.to_i + destination_to_us.to_i
end



# num_stops = stops_to_location(index_of_start, index_of_destination)

if num_stops != 0
	puts "Starting at #{starting_station} station and getting off at #{destination_station} station"
	puts "Your trip will be #{num_stops} stops."
else
	puts "You are already there fool."
end
