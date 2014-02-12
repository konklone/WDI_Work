# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = gets.chomp.to_i
# Generate a random number between 0 and 10
secret = rand(9) + 1 #also secret = rand(1..9) || secret = rand(1...10)

# Use a while loop to let the user guess again until he/she gets the answer right.
while answer != secret
  
  if answer < secret
    puts "Aim higher!"
  elsif answer > secret 
    puts "Shoot lower"
  end

answer = gets.chomp.to_i

end

# Display a congratulatory response
puts "that's it!  How'd you know?!"


#ANOTHER WAY TO CODE IT - DRY
# turn answer into $answer