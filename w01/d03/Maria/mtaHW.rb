n =['ts', '34th', '28th-n', '23rd-n', 'us']

#{n: ['ts', '34th', '28th-n', '23rd-n', 'us']}

###################### Beginning of program ################}################

puts "Welcome to MTA Stop"
puts "These are the stops on the N Line"

# spits out the stops to user
n.each do |stops|
	puts stops
end
# gets the user_on variable
puts "Please tell me, which of the stops above are you getting ON?"
user_on = gets.chomp

# gets the user_off variable
puts "Please tell me, which of the stops above are you getting OFF?"
user_off = gets.chomp

# loop over array comparing 
# n.each_index do |stops| 
# 	 if user_off == stops 
# 		puts "you have #{user_off}"
# 	end
# end
	
n.each_with_index do |key, array|
	puts key
	puts array 
end


#a.index { |x| x == "b" } 

# a.each_index {|x| print x, " -- " }

#  dont put it in just a array
# first you need a hash then put the array of stops in the hash
# then reference it by symblos
# subway = { n: ["times square", "34th", "28th", "23rd", "union square", "8th"],  l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"] }
# this is how i iterated through the stops subway[:n].each { |line| puts line }

# oo the user input comparison thing is a method
# def how_many_stops(subway, on, off) #array       choice_subway = subway        choice_subway.index(off) - choice_subway.index(on) end

# # user_off - user_on (index)


# n.each do |stops|
# 	if user_off == stops 
# 		user_stops << stops
# 		puts "You have #{user_stops.length} stops left"
#     end	
# end 

# we give number of stops for their trip
#puts "You have #{user_stops.length} stops left"


