# Display a prompt for the user
def get_answer_from_user
  puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "
  $answer = gets.chomp.to_i
end

secret = rand(1..9)

# Use a while loop to let the user guess again until he/she gets the answer right.
while $answer != secret
  if $answer < secret
    puts "Higher...Guess again!"
  else
    puts "Lower...Guess again!"
  end
  $answer = get_answer_from_user
end

puts "Congrats! You read my mind! You're amazing!"



