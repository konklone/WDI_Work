=begin
	
N Line Stops Array: TS, 34th, 28th-N, 23rd-N, US, 8th-N
L Line Stops Array: 8th-L, 6th, US, 3rd, 1st
MTA Lines Hash: :n => n, :l => l

Ask user what line they're getting on at?
puts line hash options

set start_line equal to user input

Ask user what stop they're getting on at?
puts line array to dispay options based on start_line

Set variable start_station equal to user input

Ask user what line they're getting off at
puts line has options

set end_line equal to user input

Ask user what stop they're getting off at
puts line array to display options based on end_line

Get variable end_station equal to user input

if start_line and end_line are equal
	Get indeces of start_station and end_station using Array#index("stop name")

	Subtract indeces from one another and return the absolute value

	puts distance between the stops
else
	Get indeces of start_station and end_station

	Subtract each from index of Union square on the respective line array

	Take the absolute value of each, and add them together

	puts distance between the stops

end
	
=end

n = ["ts", "34th", "28th-n", "23rd-n", "us", "8th-n"]
l = ["8th-l", "6th", "us", "3rd", "1st"]
s = ["gc", "33rd", "28th-s", "23rd-s", "us"]

mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "What line are you getting on at?"
puts "Choose 'l', 'n' or 's':"
start_line = gets.chomp.downcase.to_sym

puts "What stop are you getting on at?"
puts "Choose #{mta[start_line]}: "
start_station = gets.chomp.downcase

puts "What line are you getting off at?"
puts "Choose 'l', 'n' or 's':"
end_line = gets.chomp.downcase.to_sym

puts "What stop are you getting off at?"
puts "Choose #{mta[end_line]}: "
end_station = gets.chomp.downcase

if start_line == end_line
	distance = ( start_line.index(start_station) - start_line.index(end_station) ).abs
else
	distance_1 = ( mta[start_line].index(start_station) - mta[start_line].index('us') ).abs
	distance_2 = ( mta[end_line].index(end_station) - mta[end_line].index('us') ).abs
	distance = distance_1 + distance_2
end

puts "Your trip is #{distance} stops"






