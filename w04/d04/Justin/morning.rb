#Rock paper scissors game

#creates computer choice randomly, outputs computer choice
choice_hash = {r: "Rock", p: "Paper", s: "Scissors"}
computer_choice = choice_hash.keys.sample

#promp user, and save choice to variable
puts "Welcome to Rock, Paper, Scissors!"
puts "Choose (R)ock, (P)aper, or (S)cissors:"
user_choice = gets.chomp.downcase.to_sym

# if computer_choice.has_key?(users_choice)
# 	puts "Invalid selection.  Fail!"
# end

puts "Computer plays #{choice_hash[computer_choice]}"
#
if user_choice == computer_choice
	puts "TIE!  Try again sucka!"
else
	case user_choice
	when :r
		if computer_choice == :p
			puts "Paper beats rock.  You loose fool."
		else
			puts "Rock smashes scissors.  You win!!"
		end
	when :p
		if computer_choice == :s
			puts "Scissors cuts paper.  You loose fool."
		else
			puts "Paper covers rock.  You win!!"
		end
	when :s
		if computer_choice == :r
			puts "Rock smashes scissors.  You loose fool."
		else
			puts "Scissors cuts paper.  You win!!"
		end
	end
end