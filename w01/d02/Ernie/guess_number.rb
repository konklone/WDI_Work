# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = gets.chomp.to_i

# Generate a random number between 0 and 10
secret = rand(10)
  if secret >= 5 
    puts "higher"
  else
    puts "lower"
end
# Use a while loop to let the user guess again until he/she gets the answer right.

until answer == secret
  puts "Thats Not It!"
<<<<<<< HEAD
=======
    if answer > secret 
    puts "higher"
  else
    puts "lower"
end
>>>>>>> master
 answer = gets.chomp.to_i
end

# Display a congratulatory response
puts "that's it!  How'd you know?!"
