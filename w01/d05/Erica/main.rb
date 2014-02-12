# Require all seed classes
require 'animal.rb'
require 'client.rb'
require 'shelter.rb'

# #####Phase 2
# - Create a main.rb
# - It should create a new shelter for you
# - It should display a menu of options for the user to choose from:
#   - Create an animal
#   - Create a client
#   - Quit
# - When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.
  
  # Display the menu 
  def menu
  puts "\n\n*** HappiTails Shelter Directory ***\n\n"
  puts "(1) Display all animals"
  puts "(2) Display all clients"
  puts "(3) Add an animal" 
  puts "(4) Add a client"
  puts "(5) Put an animal up for adoption"
  puts "(6) Quit\n\n"
  puts 
  gets.chomp.downcase
  end

# Seed Data

shelter = Shelter.new("HappiTails")

shelter.clients["Bob Jones"] = Client.new("Bob Jones", 34)
shelter.clients["Sally Johnson"] = Client.new("Sally Johnson", 26)
shelter.animals["Rex"] = Animal.new("Rex", "dog")
shelter.animals["Sparky"] = Animal.new("Sparky", "cat")

shelter.clients["Bob Jones"].pets << Client.new("Juicy", "alligator")
shelter.clients["Sally Johnson"].pets << Client.new("Bit", "turtle")
shelter.animals["Rex"].toys << "bone" 
shelter.animals["Sparky"].toys << "chew toy"

# Call the menu method
response = menu

# loop
 while response != "q"
  case response 
    when '1' 
      #Call animals_list  method from the Shelter class.
    puts shelter.animals_list  
    when '2'
    # Call clients_list from the Shelter class. 
    puts shelter.clients_list
    when '3'
      # insert a new animal into the shelter animal hash
    print "Enter animal name: "
    name = gets.chomp 
    print "Enter animal species: "
    shelter.animals[name] = Animal.new(name, species)
    species = gets.chomp
    # add animal toys to the toys array
    print "Does the animal have any toys? (Y/N)"
    answer gets.chomp.downcase
    while answer != "n"
      print "Enter a toy: "
    toy = gets.chomp.downcase
    shelter.animals[name].toys << toy
    when '4'
      # insert a new client into the Shelter hash
    print "Enter client name: "
    name = gets.chomp
    print "Enter client's age: "
    age = gets.chomp.to_i
    shelter.clients[name] = Client.new(name, age)
    # add client's pets to the pets array
    print "Does he/she have any pets? (Y/N) "
    answer = gets.chomp.downcase
    while answer != "n"
    print "What is the pet's name?"
    animal.name = gets.chomp.downcase
    shelter.clients[name].animals << animals
    when '5'
        # adoption process
    print "Enter the name of the client who is adopting: "
    name = gets.chomp
    if shelter.clients.has_key?(name)
    puts shelter.clients_list
    puts " \n\n "
    print "What is the name of the animal?"
    animal.name = gets.chomp.downcase
    shelter.animals.delete(animal)
  else 
    when '6'
      response = menu
    end
  end

  def get_animal_info
    puts "Name: " 
    $name = gets.chomp.downcase
    puts "Species: "
    $species = gets.chomp.downcase
    puts "Toys: yes or no?"
    if gets.chomp.downcase == "yes"
    then puts "Name the toys: "
    $toys = gets.chomp.downcase
  end
end


