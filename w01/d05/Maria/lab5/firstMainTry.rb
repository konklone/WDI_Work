##### Happy Tails Site #######

require_relative "client"
require_relative "animal"
require_relative "shelter"

##### The program begins here
# 1st it creates an empty shelter for the user.
shelter = Shelter.new("Animals R Us")
# maria = Client.new("Maria", 23)
# tiny = Animal.new("Tiny", "Capuchin Monkey", "Rattle")
# shelter.clients.push(maria)
# shelter.animals.push(tiny)

# Then it welcomes the user with the new shelter name 
# and gives a menu

puts "Welcome to #{shelter}!"
puts "Would you like to add a (C)lient, an (A)nimal, or (Q)uit?"
answer = gets.chomp.downcase

# This choice gets the user info and then uses it to populate the vars
# in the client class to create a new instance of user with those vars
# in the happyT file. 
# First I did this in IF stmts so I changed it to WHILE like in rental HW.

while answer != "q"

  case answer 
    when "c"
	puts "Your name?"
	name = gets.chomp
	puts "Your age?"
	age = gets.chomp
	
  shelter.clients.push(Client.new(name, age))

  # This choice gets the user animal info to create new animal from class
  # in HappyT file.

    when "a"
	puts "Your pet's name?"
	name = gets.chomp
	puts "Your pet's species type?"
	species = gets.chomp
	puts "Your pet's toy?"
	toys = gets.chomp

  shelter.animals.push(Animal.new(name, species, toys))
  
  end
end

# Here the program offers the user another menu
puts "Would you like to see:"
puts "All the shelter clients and pets? Y or N"
answer = gets.chomp.downcase

# This will show the user the clients array in shelter class
# and the animal class in the shelter class.

  if answer == "y"
  puts shelter.clients()  
  puts shelter.animals()
else
  end

puts 

############### SKETCH BOOK AREA #####################

# This is just stuff I was trying out before getting it to work.

# maria = Client.new("Maria", 23, "Momo")
# puts client1

# tiny = Animal.new("Tiny", "Capuchin Monkey", "Rattle")
# puts animal1

# shelter1 = Shelter.new("Animals R Us", 5, 8)
# puts shelter1
