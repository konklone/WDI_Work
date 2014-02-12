require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'seeds'
require 'pry'

# creates a shelter automatically
# menu
	# create an animal
		# get name
		# get species
	# create a client
		# get name
		# get age
	# create a shelter
		# get name
	# display all animals
		# $my_shelter.list_animals
	# display all clients
		# $my_shelter.list_clients
	# quit -->

def new_animal
	puts "What is the name of the animal?"
	name = gets.chomp.capitalize
	puts "What species of animal is #{name}?"
	species = gets.chomp.downcase
	# instantiating new Animal object
	animal = Animal.new(name, species)
	# setting animal instance to $my_shelter
	$my_shelter.rescue_animal(animal)
end

def new_client
	puts "What is the new client's name?"
	name = gets.chomp.capitalize
	puts "What is the client's age?"
	age = gets.chomp.to_i
	# instantiating new Animal object
	client = Client.new(name, age)
	# setting client instance to $my_shelter
	$my_shelter.acquire_client(client)
end

def new_shelter
	puts "What would you like to call the new shelter?"
	# instantiating new Shelter object
	Shelter.new(name)
end

def animal_selection
	puts "What animal is being adopted?"
	i = 1
	$my_shelter.animals.each do |animal|
		puts "#{i} : #{animal}"
		i += 1
	end
	selection = gets.chomp.to_i
	$my_shelter.animals[selection - 1]
end

def client_selection(animal)
	puts "Which client is adopting #{animal.name}?"
	# Puts each client name
	$my_shelter.clients.each_key do |client|
		puts "#{client}"
	end
	selection = gets.chomp.capitalize
	$my_shelter.clients[selection]
end

def animal_selection_2(client)
	puts "What animal is being adopted?"
	i = 1
	client.pets.each do |pet|
		puts "#{i} : #{pet}"
		i += 1
	end
	selection = gets.chomp.to_i
	$my_shelter.animals[selection - 1]
end

def client_selection_2
	puts "What client is putting an animal up for adoption?"
	# Puts each client name
	$my_shelter.clients.each_key do |client|
		puts "#{client}"
	end
	selection = gets.chomp.capitalize
	$my_shelter.clients[selection]
end

def adoption
	# runs animal selection method, which returns an Animal object
	animal = animal_selection
	# runs client selection method, which returns a Client object
	client = client_selection(animal)
	if client.pets.count > 1
		puts "HEY!!! NO MORE THAN TWO PETS FOR YOU."
		choice = menu
	else
		# calls the client_adopts method on class Shelter instance $my_shelter
		$my_shelter.client_adopts(animal, client)
end

def drop_off
	# runs 2nd client selection method, which returns
	# a Client object and converts it to a string
	client = client_selection_2
	# runs 2nd animal selection method, which returns
	# an Animal object and converts it to a string
	animal = animal_selection_2(client).to_s
	
	# calls the client_dumps method on class Shelter instance $my_shelter
	$my_shelter.client_dumps(animal, client) 
end


def menu
	puts "*****  Welcome to HappiTales!  *****\n"
	
	puts "Type the number that corresponds with what you'd like to do:\n"

	puts "1 : Add a new animal"
	puts "2 : Add a new client"
	puts "3 : Create a new shelter"
	puts "4 : Display all animals"
	puts "5 : Display all clients"
	puts "6 : Facilitate adoption"
	puts "7 : Receive animal for adoption from client"

	gets.chomp.downcase
end

#####----- BEGIN PROGRAM -----#####
choice = menu

while choice != "q"
	case choice
	when "1"
		# add a new animal
		new_animal
	when "2"
		# add a new client
		new_client
	when "3"
		# create a new shelter and set it 
		# equal to variable shelter_1
		shelter_1 = new_shelter
	when "4"
		puts $my_shelter.list_animals
	when "5"
		puts "Your clients are #{$my_shelter.list_clients}."
	when "6"
		adoption
	when "7"
		drop_off
	else
		puts "I don't understand your request."
	end

	choice = menu
end
