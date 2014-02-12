
input_options = ["r", "p", "s"]


def get_choice
  puts "[r]ock, [p]aper, or [s]cissors? -- or [q]uit."

  gets.chomp.downcase
end

#conditional here that validates input

def rock_battle
  if computer_rand == "p"
    puts "Paper beats rock."
    puts "The computer won."
  elsif computer_rand == "s"
    puts "Rock beats scissors."
    puts "You won!"
  end
end

def paper_battle
  if computer_rand == "r"
    puts "Paper beats rock."
    puts "You won!"
  elsif computer_rand == "s"
    puts "Scissors beat paper."
    puts "The computer won."
  end
end

def scissors_battle
  if computer_rand == "r"
    puts "Rock beats scissors."
    puts "The computer won."
  elsif computer_rand == "p"
    puts "Scissors beat paper."
    puts "You won!"
  end
end

def play
  choice = get_choice
  computer_rand = input_options.sample

  if choice == computer_rand
    puts "You both chose the same thing! \nTry again."
  else
    case choice
    when "r"
      rock_batte
    when "p"
      paper_battle
    when "s"
      scissors_battle
    end
  end
end

# Game loop


while choice != "q"
  play
end