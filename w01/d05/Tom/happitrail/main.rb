# require the pry debugger and the other files associated with the app
require 'pry'
require './happi_tail'


# Creat the start menu for the end user
def menu
  puts "Hello, are you a returning client? (Y/N)"
  response = gets.chomp.downcase
end

# Get the response and set it equal to the return from the menu method
response = menu

# Create a new shelter
shelter = Shelter.new('Happi Tails')

  # begin loop for either the sign up or next action
    if response == "y"
      puts "What would you like to do"
      puts "(A)dopt a pet (R)eturn a pet (Q)uit"
      gets.chomp.downcase

    elsif response == "n"
      puts "Please sign up to continue"
      shelter.add_client
      puts "What would you like to do"
      puts "(A)dopt a pet (R)eturn a pet (Q)uit"
      gets.chomp.downcase
      # push the new client into the client array
      shelter.clients << CLient.new(name, age)

    else
      puts "Please choose A, R or Q"
    end

  choice = client_action

# loop once the user has either signed up or said they ere a returning user
      while choice != "q"
        case choice
        when "a"
          puts "Excellent! please let us know your prefrences:"
          shelter.remove_animal

        when "r"
          puts "OK, please give us a few details about your pet:"
          shelter.add_animal
          shelter.animal << Animal.new(species, age)
        end

        #choice = menu
      end





