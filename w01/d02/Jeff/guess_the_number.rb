# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

def get_answer_from_user
  puts "Please enter a number:"
  $answer = gets.chomp.to_i
end


# Obtain the user's input and interpret it as an integer.
get_answer_from_user

# Generate a random number between 0 and 10 (inclusive of 0, but not 10)
secret = 1 + rand(9) # this works

# Use a while loop to let the user guess again until he/she gets the answer right.

# AND if they don't get the answer correct, inform the user if the correct number is higher or lower than their guess

while secret != $answer
  puts "not correct!"
  if $answer > secret
    puts "try a lower number"
  elsif $answer < secret
    puts "try a higher number"
  end
  get_answer_from_user
end

# Display a congratulatory response
puts "that's it!  How'd you know?!"
