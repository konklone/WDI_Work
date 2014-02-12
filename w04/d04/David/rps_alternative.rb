print "Please select (R)ock, (P)aper, or (S)cissor: "
user_choice = gets.chomp.downcase.to_sym

outcomes = [ "rock", "scissors", "paper" ]

computer_choice = outcomes[rand(0..2)]

puts "The computer chose #{computer_choice}"

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
