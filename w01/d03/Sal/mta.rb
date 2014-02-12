$mta = {
	n: ['ts', '34th', '28th-n', '23rd-n', 'us'],
	l: ['8th', '6th', 'us', '3rd', '1st'],
	s: ['gc', '33rd', '28th-s', '23rd-s', 'us'] }

# ASK USER FOR LINE TO GET ON

puts "What line do you want to get on at? N, L, or S?"
  origin_line = gets.chomp.downcase

puts "Here are your choices of stops:"

case origin_line 
	when "n"
	  puts $mta[:n]
	when "l"
	  puts $mta[:l]
	when "s"
	  puts $mta[:s]
end

  origin_line = origin_line.to_sym

#ASK USER FOR STOP TO GET ON FOR CHOSEN LINE

puts "Where would you like to get on?"
  origin_stop = $mta[origin_line].index(gets.chomp.downcase)

puts "What line do you want to get off at? N, L, or S?"
  destination_line = gets.chomp.downcase

puts "Here are your choices of stops:"
	
case destination_line 
	when "n"
	  puts $mta[:n]
	when "l"
	  puts $mta[:l]
	when "s"
	  puts $mta[:s]
end

  destination_line = destination_line.to_sym

#ASK USER FOR DESTINATION STOP

puts "Where would you like to get off?"
  destination_stop = $mta[destination_line].index(gets.chomp.downcase)

#CALCULATE NUMBER OF STOPS

if origin_line == destination_line
  puts "You must ride #{(destination_stop - origin_stop).to_i.abs} stops"
elsif  origin_line != destination_line
  puts "You must ride #{ (($mta[origin_line].index("us").abs - origin_stop)).abs  +  (($mta[destination_line].index("us") - destination_stop)).abs} stops"
end


















