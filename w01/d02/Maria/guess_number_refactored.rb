# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
def get_answer_from_user
	puts "Please enter a number"
	$answer = gets.chomp.to_i
end
get_answer_from_user

# Generate a random number between 0 and 10
 secret = rand(1..9)

# Use a while loop to let the user guess again until he/she gets the answer right.
while $answer != secret
	# Display a congratulatory response
	puts "No!"
	if $answer < secret
		puts "Go a little higher!"
	else
		puts "go a little lower"
	end

	get_answer_from_user
	puts "Wow you must've read my mind!!"

end
