# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = gets.chomp.to_i

# Generate a random number between 0 and 10
secret = rand(0...9)

# Use a while loop to let the user guess again until he/she gets the answer right.

 while answer != secret 
  if answer > secret
   puts "Nope guess again its lower"
   
 else puts "Nope guess again its higher"
   
 end
  answer = gets.chomp.to_i
 end
puts "Great job!"


# Display a congratulatory response
