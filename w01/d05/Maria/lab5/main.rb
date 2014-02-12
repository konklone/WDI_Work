require 'pry'
require_relative "client"
require_relative "animal"
require_relative "shelter"
#####Program starts here #####
# It begins by creating a shelter for user.
shelter = Shelter.new("Animals R Us")
puts "Welcome to #{shelter.name}"

# Then it shows user a menu
def menu
  puts '1 : Create Client'
  puts '2 : Create an Animal'
  puts '3 : Display All Animals'
  puts '4 : Display all Clients'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end

# This calls the menu method which returns
# a string and we assign that string with the 
# variable "response".
response = menu

# Now we begin a loop that says: while the 
# response is NOT "q", stay in ths loop.

while response != "q"
	case response
	when "1"
# Here we get the input from user and it gets stored in 
# the Instance Vars that live in the Client class.
		puts "Your name?"
		name = gets.chomp
		puts "Your age?"
		age = gets.chomp
		puts "Do you have an pet?(Y or N)"
		do_u_have_a_pet = gets.chomp.downcase
			case do_u_have_a_pet
			when "y"
				puts "How many? (Please enter an integer)"
				how_many = gets.chomp.to_i
				if how_many >= 2 
					puts "You have too many animals, goodbye!"
				else
					puts "What is your pets name?"
					name = gets.chomp.downcase
					puts "What is the species?"
					species = gets.chomp.downcase
					puts "Does your pet have a toy?"
					toys = gets.chomp.downcase
					
					#animal.toys.push(new_toy)
      		shelter.animals.push(Animal.new(name, species, toys))
				end
			when "n"
				puts "OK"
			end


  
  # Here we create a new client with those vars and 
  # push it into the clients hash that lives in the 
  # shelter class.
  # This was hard for me to figure out, I got a tip to make 
  # it a hash in shelter and then make shelter a global. 
  # Also I forgot that you don't need "Push" to add to hash.
  # That messed me up for a long time too.
  # Also, not understanding how age went into the hash
  # too really confused me.
  $shelter.clients[name.downcase] = Client.new(name, age)

	# I decided to puts the result so I could see result.
  #puts clients[name.capitalize]
	when "2"
		puts "Your pet's name?"
		name = gets.chomp
		puts "Your pet's species type?"
		species = gets.chomp
		puts "Your pet's toy?"
		toys = gets.chomp

  # Here we create a new animal with those vars and 
  # push it into the animals array that lives in the 
  # shelter class
  $shelter.animals[name.downcase] = Animal.new(name, species, toys)
  # I decided to puts the result so I could see result.
  puts $shelter.animals[name.downcase]
	when "3"
		puts $shelter.animals 

	end
end
