rps = ["rock", "paper", "scissors"]

# ask user for input
puts "rock, paper or scissors?"
rps_input = gets.chomp.downcase

rps_comp = rps.sample


	if rps_input == rps_comp
		puts "Tie"
	else
		case rps_comp
		when "rock"
			if rps_input == "paper"
				puts "Win"
			else
				puts "Lose"
			end
		when "paper"
			if rps_input == "rock"
				puts "Lose"
			else
				puts "Win"
			end
		else #scissors
			if rps_input == "rock"
				puts "Win"
			else
				puts "Lose"
			end
		end
	end
