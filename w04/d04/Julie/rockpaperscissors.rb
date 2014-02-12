
rps = ["rock", "paper", "scissors"]


puts "please choose rock, paper, or scissors"
rps_input = gets.chomp.downcase
rps_comp = rps.sample

if rps_comp == rps_input
puts "Tie!"

else

case rps_comp
  when "rock"
      
    if rps_input == "paper"
      puts "Paper beats rock!"
    else 
      puts "Rock beats scissor"
    end

  when "paper"
    if rps_input == "rock"
      puts "Paper beats rock!" 
    else 
      puts "Scissor beats paper"
    end

  else
    if rps_input == "rock"
      puts "Rock beats scissor!" 
    else rps_input == "paper"
      puts "Scissor beats rock!"
    end

end

end




