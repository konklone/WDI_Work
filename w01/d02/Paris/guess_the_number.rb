# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

def get_answer_from_user
  puts "Please enter a number:"
  $answer = gets.chomp.to_i

end


# Obtain the user's input and interpret it as an integer.


# Generate a random number between 0 and 10
secret = rand(1..9)

# Use a while loop to let the user guess again until he/she gets the answer right.
while $answer != secret
  puts "Try again!"
  if $answer > secret 
    puts "Your answer is too high. Give me another number."
  else
    puts "Your answer is too low. Give me another number."
  end
  get_answer_from_user
end
# Display a congratulatory response
puts "That's it!  How'd you know?!"


