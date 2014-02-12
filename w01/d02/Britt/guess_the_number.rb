# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of?"

# Obtain the user's input and interpret it as an integer.
def get_input_from_user
	$answer = gets.chomp.to_i
end

get_input_from_user

# Generate a random number between 0 and 10
secret = rand(9) + 1

# Use a while loop to let the user guess again until he/she gets the answer right.
while $answer != secret
	# Checking to shame user if guess is above 10
	if $answer < 10
		if secret > $answer
			puts "Good guess, but you undershot it! Guess higher!"
		else
			puts "Nice try, but you guessed too high! Guess lower!"
		end
		puts "Try again:"
	else
		puts "Why would you guess a number larger than I told you to, dummy?"
		puts "Whatever, guess again!"
	end

	get_input_from_user

end

# Display a congratulatory response
puts "That's it!  How'd you know?!"