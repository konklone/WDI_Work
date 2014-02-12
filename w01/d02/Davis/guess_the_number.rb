# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
def get_answer_from_user
	puts "Please enter a number"
	$answer = gets.chomp.to_i
end

#answer = gets.chomp.to_i
get_answer_from_user

# Generate a random number between 0 and 10
secret = rand(1...10)

# Use a while loop to let the user guess again until he/she gets the answer right.
#depending on guess, tell if higher or lower
while  $answer != secret
	puts $answer < secret ? "Guess higher" : "Guess lower"
  #puts "Guess higher" if answer < secret
  #puts "Guess lower" if answer > secret
	get_answer_from_user
end

# until answer == secret
#   puts answer < secret ? "Guess higher" : "Guess lower"
# 	answer = gets.chomp.to_i
# end


# Display a congratulatory response
puts "that's it!  How'd you know?!"

