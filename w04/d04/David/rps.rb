print "Please select (R)ock, (P)aper, or (S)cissor: "
user_choice = gets.chomp.downcase.to_sym

computer_choice = [ "rock", "scissors", "paper" ].sample

puts "The computer chose #{computer_choice}"
computer_choice = computer_choice.to_sym

rock = {rock: "draw", scissors: "win", paper: "lose"}
paper = {rock: "win", scissors: "lose", paper: "lose"}
scissor = {rock:  "lose", scissors: "draw", paper: "win"}

case user_choice
  when :r
    puts  "You #{rock[computer_choice]}"
  when :p
    puts "You #{paper[computer_choice] }"
  when :s
    puts "You #{scissor[computer_choice] }"
end
