require 'pry'

require './animal_class'
require './client_class'
require './shelter_class'
require './seed.rb'

def display_menu
	
	puts ""
	puts "What would you like to do?"
	puts ""
	puts "1. Create an animal."
	puts "2. Create a client."
	puts "3. Display all animals."
	puts "4. Display all clients."
	puts "5. Do an adoption"
	puts "6. Do a return"
	puts "0. Quit"
	puts ""
end

def create_animal(shelter)
	puts "What is the little guy's name?"
	name = gets.chomp
	puts "And what kind of animal is he?"
	species = gets.chomp

	animal1 = Animal.new(name, species)
	shelter.animals << animal1
end

def create_client(shelter)
	puts "What is the client's name?"
	name = gets.chomp
	puts "How old are they?"
	age = gets.chomp.to_i

	person1 = Client.new(name, age)

	shelter.clients << person1
end

def do_adoption(shelter1)
	puts "you are going to send an animal home with a client"
	puts "what animal?"
	animal_name = gets.chomp

	puts "what client?"
	client_name = gets.chomp

	#get animal object with animal_name
	#get client object with client_name
	#call facilitate_adoption
	#shelter1.facilitate_adoption(person1, animal2)

	animal_obj = nil
	client_obj = nil

	#retrieve animal obj
	shelter1.animals.each do |x|
		if x.name == animal_name then
			animal_obj = x
		end
	end
	
	#retrieve client obj
	shelter1.clients.each do |x|
		if x.name == client_name then
			client_obj = x
		end
	end

	shelter1.facilitate_adoption(client_obj, animal_obj)

	puts "you sent #{animal_name} home with #{client_name}"
	
end

def do_return(shelter1)
	puts "you are going to return an animal from a client"
	puts "what animal?"
	animal_name = gets.chomp

	puts "what client?"
	client_name = gets.chomp

	animal_return_obj = nil
	client_return_obj = nil


	binding.pry

	#get client obj
	shelter1.clients.each do |z|
		if z.name == client_name then
			client_return_obj = z
		end
	end

	#shelter1.clients.each {|z| if z.name == client_name then client_return_obj= z}
	
	#get pet object

	#binding.pry

	client_return_obj.pets.each do |y|
		if y.name == animal_name then
			animal_return_obj = y
		end
	end

	shelter1.facilitate_return(client_return_obj, animal_return_obj)

end


shelter1 = Shelter.new("ASPCA")

populate_shelter(shelter1)

puts "Hi, welcome to Happy Tails"

controller = nil
while controller != 0
	display_menu	
	controller = gets.chomp.to_i

	case controller
	when 1
		create_animal(shelter1)
	when 2
		create_client(shelter1)
	when 3
		puts shelter1.animals
		# puts shelter1.clients.pets #####********##########
	when 4
		puts shelter1.clients
	when 5
		do_adoption(shelter1)
	when 6
		do_return(shelter1)
	when 0
		puts "Goodbye!"
	else
		puts "Thats a bad number"
	end
end

