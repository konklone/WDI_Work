def game_result(game_throw, user_throw)
  beats = {
    "rock" => "scissors",
    "scissor" => "paper",
    "paper" => "rock"
  }

  # Compare and see who wins
  if beats[user_throw] == game_throw
    "You win"
  elsif user_throw == game_throw
    "You tie"
  else
    "You lose"
  end
end

throws = ['rock', 'paper', 'scissors']
game_throw = throws.sample

puts "Choose one: #{throws.join(", ")}?"
user_throw = gets.chomp

puts "The computer chose #{game_throw}"
puts game_result(game_throw, user_throw)