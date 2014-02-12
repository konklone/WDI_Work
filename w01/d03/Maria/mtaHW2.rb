n = ['ts', '34th', '28th-n', '23rd-n', 'us']

###################### Beginning of program ################################

puts "Welcome to MTA Stop"
puts "These are the stops on the N Line"

# spits out the stops to user
x = 0
while x <= n.length
	puts n[x]
	x += 1
end

# gets the user_on variable
puts "Please tell me, which of the stops above are you getting ON?"
user_on = gets.chomp

# gets the user_off variable
puts "Please tell me, which of the stops above are you getting OFF?"
user_off = gets.chomp

# loop to compare user variable with array
x = 0
while x <= n.length
	n[x]
	x += 1
	
end
