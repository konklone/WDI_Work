mta = {n: ['ts', '34th', '28th-n', '23rd-n', 'us'], 
	   l: ['8th', '6th', 'us', '3rd', '1st'],
	   s: ['gc', '33rd', '28th-s', '23rd-s', 'us']}

puts "Which subway line would you like to enter (N or L)?"
	origin_line = gets.chomp.downcase
if origin_line == "n"
	puts mta[:n]
elsif origin_line == "l"
	puts mta[:l]
end
origin_line = origin_line.to_sym
puts "Which stop would you like to enter?"
origin_stop = mta[origin_line].index(gets.chomp.downcase)
puts "what line would you like to get off at?"
destination_line = gets.chomp.downcase
	if destination_line == "n"
		puts mta[:n]
	elsif destination_line == "l"
		puts mta[:l]
	end
destination_line = destination_line.to_sym
puts "Where would you like to get ofF?"
destination_stop = mta[destination_line].index(gets.chomp.downcase)

if origin_line = "n"

	puts "ride #{(destination_stop - origin_stop).to_i.abs} stops"
#elsif origin_line == "n" && destination_line == "l"
#	answer = ((4 - origin_stop).abs + (2 - destination_stop).abs)
#elsif origin_line == "l" && destination_line == "n"
#	answer = ((4 - origin_stop).abs + (2 - destination_stop).abs)

#puts "#{answer}"

