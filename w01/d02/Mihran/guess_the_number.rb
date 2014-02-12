# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

def get_answer_from_user
  puts "Please enter a number"
  $answer = gets.chomp.to_i
end

# Obtain the user's input and interpret it as an integer.
get_answer_from_user

# Generate a random number between 0 and 10
secret = rand(9).to_i

# Use a while loop to let the user guess again until he/she gets the answer right.

while $answer != secret
  if $answer>secret
    puts "Guess again. Hint: it's lower."
  else 
    puts "Guess again. Hint: it's higher."
  end

  get_answer_from_user
end

if $answer == secret
  puts "that's it! How'd you know?"
end