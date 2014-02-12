
line_n = ["ts", "34", "28", "23", "us", "8"]
line_l = ["8th", "6th", "us", "3rd", "1st"]
line_s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

mta = {}
mta[:n] = line_n
mta[:l] = line_l
mta[:s] = line_s

def verify_station(station, line)
	#TODO verify that the station is on line.
	#return boolean
end

def verify_line(line, system)
	#TODO verify that the line is in the system
	#return boolean
end


def print_subway_line(line)
	puts line
end

def print_subway_system(system)
	puts system
end


def get_start_station(line)
	puts "What station are you starting on?"
	gets.chomp.downcase
end

def get_finish_station(line)
	puts "What stop are you getting off at?"
	gets.chomp.downcase
end

def get_start_line(system)
	puts ("What line are you taking?")
	line = gets.chomp.downcase
	return system[line.to_sym]
end

def get_finish_line(system)
	puts ("What line are you ending on?")
	line = gets.chomp.downcase
	return system[line.to_sym]
end

def find_position_in_array(station, line)
	position = 0
	while line[position] != station
		position += 1
	end
	return position
end

def find_stops_to_US(station, line)
	dist1 = find_position_in_array(station, line)
	dist2 = find_position_in_array("us", line)
	totaldistance = dist1 - dist2

	puts "#{station} is distance #{totaldistance.abs} from Union Square"
	return totaldistance.abs
end
	
def calculate_trip_length(start_station, start_line, finish_station, finish_line)
	
	if start_line == finish_line
		dist1 = find_position_in_array(start_station, start_line)
		dist2 = find_position_in_array(finish_station, finish_line)
		totaldistance = dist1 - dist2
	else
		puts "you will be transfering at union station"
		dist1 = find_stops_to_US(start_station, start_line)
		dist2 = find_stops_to_US(finish_station, finish_line)
		totaldistance = dist1 + dist2
	end
	return totaldistance.abs
end

###########

###get all of starting data
start_line = get_start_line(mta)
print_subway_line(start_line)
start_station = get_start_station(start_line)

###get all of finishing line
finish_line = get_finish_line(mta)
print_subway_line(finish_line)
finish_station = get_finish_station(finish_line)

###perform calculation
numberofstops = calculate_trip_length(start_station, start_line, finish_station, finish_line)

###display calculation
puts "you will have to travel #{numberofstops} stops"


