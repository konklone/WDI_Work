require_relative 'animal'
require_relative 'clients'
require_relative 'shelter'

#Menu for animal shelter app - returns response for while loop 
def menu 
  puts "ANIMAL SHELTER APP"
  puts 'CA : Create an animal'
  puts 'CC : Create a client'
  puts 'DA : Display all animals'
  puts 'DC : Display all clients'
  puts 'AA : Adopt animal'
  puts 'GU : Give up animal for adoption'
  puts "QU : Quit\n\n"
  gets.chomp.downcase
end

#Create a new shelter for clients and animals 
shelter = Shelter.new("ANIMAL SHELTER")

#Seeds to populate the application with examples
shelter.animals["ruby"] = Animal.new("ruby", "Dog", ["bone"])
shelter.animals["dusty"] = Animal.new("dusty", "Cat", ["bone"])
shelter.animals["sparky"] = Animal.new("sparky", "Dog", ["bone"])
shelter.clients["sal"] = Client.new("sal", "28")
shelter.clients["sal"].pets["justice"] = Animal.new("justice", "hamster", ["wheel"])

#User resonse for while loop 
response = menu
#Begin while loop 
while response != 'qu'
case response
when "ca"
	puts "What is the animal's name?"
	name = gets.chomp.downcase
	puts "What type of animal is it?"
	species = gets.chomp.downcase
	puts "What toys does it have?"
	toys = gets.downcase
	toys = toys.split(/,/)
	#Creates new Animal object and stores it within the animals hash of the Shelter object 
	#The user input name is saved as a string being the key, and the object as a value
	shelter.animals[name] = Animal.new(name, species, toys)
when "cc"
	puts "What is your name?"
	name = gets.chomp.downcase
	puts "How old are you?"
	age = gets.chomp.downcase
	#Creates new Client object and stores it within the Clients hash of the Shelter object 
	#The user input name is saved as a string being the key, and the object as a value
	shelter.clients[name] = Client.new(name, age)
when "da"
	#Lists all animals within the animals hash of the Shelter object, using the list_animals method 
	puts shelter.list_animals
when "dc"
	#Lists all animals within the animals hash of the Shelter object, using the list_clients method
	puts shelter.list_clients
when 'aa'
	puts "What is your name?"
	client = gets.chomp.downcase
	puts "What is the name of the pet would you like to adopt?"
	pet = gets.chomp.downcase
	#Uses user input to push pet object 
	shelter.clients[client].pets[pet] = shelter.animals[pet]
	shelter.animals.delete(pet)
when 'gu'
	puts "What is your name?"
	client = gets.chomp.downcase
	puts "What is the name of the animal you'd like to give up for adoption?"
	pet = gets.chomp.downcase
	shelter.animals[pet] = shelter.clients[client].pets[pet]
	shelter.clients[client].pets.delete(pet)
end
# This process should continue until the user selects a quit option from the menu
response = menu 
end








