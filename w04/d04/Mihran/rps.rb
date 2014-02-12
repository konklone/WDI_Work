ai_count = 0
player_count = 0

puts "Welcome to my lair I am the destroyer of Boy's Souls"
puts "I am the Troll"
puts "WE WILL DUEL!!!"
until player_count > 1 || ai_count > 1  do

choices = %w(rock paper scissors) # <==> choices = ["rock", "paper", "scissors"]


puts "Choose your weapon: 'rock', 'paper', 'scissors' "

user = gets.chomp

selection = choices.sample

statement= %w(you win you lose)
puts "Computer chooses : #{selection}"

  if user == selection
    player_count -=1 && ai_count -=1
  else
      case user

      when 'rock'
        if selection == 'scissors'
          puts statement[0]
          player_count += 1  
        else
          puts statement[1]
          ai_count += 1
        end
      when 'scissors'
        if selection == 'paper'
          puts statement[0]
          player_count += 1 
        else
          puts statement[1]
          ai_count += 1
        end
      when 'paper'
        if selection == 'rock'
          puts statement[0]
          player_count += 1 
        else
          puts statement[1]
          ai_count += 1
        end
    end
  end

      puts "Dayman's wins: #{player_count}"
      puts "Trolls's wins: #{ai_count}"
end
puts "YOU ARE THE CHAMPION OF THE SUN"
puts "YOU ARE A MASTER OF KARATE AND FRIENDSHIP"
puts "FOR EVERYONE!!!"


