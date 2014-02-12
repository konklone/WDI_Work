# include our classes 
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'


# Display the menu. 
def menu
  puts "*** Welcome to the HappiTails Shelter Directory***"
  puts "----------------------------------------------------------"
  puts '1 : Display all animals'
  puts '2 : Display all clients'
  puts '3 : Add an animal to the directory'
  puts '4 : Add a client to the directory'
  puts '5 : Adopt an animal'
  puts '6 : Put animal up for adoption'
  puts "Q : Quit\n\n"
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


# Call the menu method.
response = menu

# program loop
while response != 'q'
  case response
  
  when '1'
    # Calls list_animals method from Shelter object. Prints list of animals in the shelter.
    puts shelter.list_animals
    puts "----------------------------------------------------------" 
  when '2'
    # Calls list_clients method from Shelter object. Prints list of shelter's clients. 
    puts shelter.list_clients
    puts "----------------------------------------------------------"
  
  when '3'
    # inserts a new animal into the shelter animals hash
    print "Enter animal name: "
    name = gets.chomp
    print "Enter animal species: "
    species = gets.chomp
    shelter.animals[name] = Animal.new(name, species)
    # adds animal's toys to toys array
    print "Does the animal have any toys (Y/N)? "
    answer = gets.chomp.downcase
    while answer != 'n'
      print "Enter a toy: "
      toy = gets.chomp.downcase
      shelter.animals[name].toys << toy
      print "Any more toys (Y/N)? "
      answer = gets.chomp.downcase
    end


  when '4'
    # inserts a new client into the shelter clients hash
    print "Enter client's first and last name: "
    name = gets.chomp
    print "Enter client's age: "
    age = gets.chomp.to_i
    shelter.clients[name] = Client.new(name, age)
    #add client's pets to pets array
    print "Does the client have any pets? "
    answer = gets.chomp.downcase
    while answer != 'n'
      print "What is the pet's name?: "
      pet_name = gets.chomp.downcase
      shelter.clients[name].pets << pet_name
      print "Any more pets? (Y/N)"
      answer = gets.chomp.downcase
    end

  when '5'
  # client adopts an animal from shelter. 
  # check to see if client is in database. if not, add them.
  # deletes animal from shelter animal hash. 
  # adds animals to client's pet's array
  puts "----------------------------------------------------------"
  print "Enter the first and last name of the client who is adopting: "
  name = gets.chomp
  if shelter.clients.has_key?(name) 
    puts shelter.list_animals
    puts "----------------------------------------------------------"
    print "What is the name of the animal to be adopted? "
    name = gets.chomp.downcase
    client.pets << name
    shelter.animals.delete(pet_name)
  else 
    print "Enter client's age: "
    age = gets.chomp.to_i
    shelter.clients[name] = Client.new(name, age)
    puts shelter.list_clients
    puts shelter.list_animals
    print "What is the name of the animal to be adopted? "
    name = gets.chomp.downcase
    client.pets << name
    shelter.animals.delete(name)
  end

  when '6'
  # client drops off an animal.
  # check to see if client is in database. if not add them.
  # adds animal to shelter animal hash
  # deletes animal from client's pet's array
  puts "----------------------------------------------------------"
  print "Enter the first and last name of the client who is dropping off animal: "
  name = gets.chomp
  if shelter.clients.has_key?(name) 
    puts "----------------------------------------------------------"
    print "What is the name of the animal to be dropped off? "
    pet_name = gets.chomp.downcase
    print "What species is the animal? "
    species = get.chomp.downcase
    shelter.animals[pet_name] << species
    shelter.clients.delete(pet_name)
  else 
    print "Enter client's age: "
    age = gets.chomp.to_i
    shelter.clients[name] = Client.new(name, age)
    puts shelter.list_clients
    puts shelter.list_animals
    print "What is the name of the animal to be dropped off? "
    name = gets.chomp.downcase
    shelter.animals[pet_name] << species
    shelter.clients.delete(pet_name)
  end
  # end
  # display menu again and get a new response
  end
  response = menu
end
