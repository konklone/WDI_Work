# # Display a prompt for the user
# puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

def get_answer_from_user
  puts "Please enter a number."
  $answer = gets.chomp.to_i


# # Obtain the user's input and interpret it as an integer.
# answer =  

# # Generate a random number between 0 and 10
# secret = 

# # Use a while loop to let the user guess again until he/she gets the answer right.
# while 
  
# end

# # Display a congratulatory response
# puts "that's it!  How'd you know?!"

puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "
answer = get_answer_from_user

secret = rand(1..9)

while $answer != secret
  puts "not correct"
  if $answer > secret
    puts "try a lower number"
  elsif $answer < secret 
    puts "try a higher number"
 = get_answer_from_user
  if integer == secret
    puts "that's it! How'd you know?!"
  end
end
