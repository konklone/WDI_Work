# require the pry debugger and the other files associated with the app
require 'pry'
require './happitrail'


# Creat the start menu for the end user
def menu
  puts "Hello, are you a returning client? (Y/N)"
  response = gets.chomp.downcase
end

# Get the response and set it equal to the return from the menu method
response = menu

# Create a new shelter
happi_trail = Shelter.new("Happi Tails")

# begin loop for either the sign up or next action
  if response == "y"
    puts "What would you like to do"
    puts "(A)dopt a pet (R)eturn a pet (Q)uit"
    client_action = gets.chomp.downcase

  elsif response == "n"
    puts "Please sign up to continue"
    happi_trail.add_client
    puts "What would you like to do"
    puts "(A)dopt a pet (R)eturn a pet (Q)uit"
    client_action = gets.chomp.downcase

    # sub loop once the user has either signed up or said they ere a returning user
      while client_action != "q"
        case client_action
        when "a"
          puts "Excellent! please let us know your prefrences:"
          happi_trail.add_animal
        when "r"
          puts "OK, please give us a few details about your pet:"
          happi_trail.return_animal
        end
        client_action = menu
      end

  else
    puts "Please choose A, R or Q"
  end









