computer_hash = {r: "Rock", p: "Paper", s: "Scissors"}

puts "Welcome to Rock, Paper, Scissors!"
puts "Choose (R)ock, (P)aper, or (S)cissors:"
user_choice = gets.chomp.downcase.to_sym
computer_choice = computer_hash.keys.sample 
puts "Computer plays #{computer_hash[computer_choice]}!"

if computer_choice == user_choice
  puts "TIE! Everyone wins. No one wins."
else
  case user_choice
  when :r
    if computer_choice == :p
      puts "You lose!"
    else
      puts "You win!"
    end
  when :p
    if computer_choice == :s
      puts "You lose!"
    else
      puts "You win!"
    end
  when :s
    if computer_choice == :s
      puts "You lose!"
    else
      puts "You win!"
    end
  end
end
