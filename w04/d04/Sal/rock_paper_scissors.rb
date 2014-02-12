puts "Please select rock, paper, or scissors"

computer_choice = ["rock", "paper", "scissors"].sample

user_choice = gets.chomp.downcase

rock = {"rock" => "draw!", "scissors" => "you win", "paper" => "you lose"}
paper = {"rock" => "you win", "scissors" => "you lose", "paper" => "draw!"}
scissors = {"rock" => "you lose", "scissors" => "draw!", "paper" => "you win"}

puts "The computer chose #{computer_choice}"

case user_choice
when "rock"
	puts rock[computer_choice]
when "paper"
	puts paper[computer_choice]
when "scissors"
	puts scissors[computer_choice]
end




