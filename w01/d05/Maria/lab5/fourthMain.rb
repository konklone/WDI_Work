# include our other ruby files
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

# Method to display the menu. It returns the response as a string
def menu
  puts "\n\n*** Animals R Us ***\n\n"
  puts '1 : List Animals'
  puts '2 : List Clients'
  puts '3 : Create Clients'
  puts '4 : Create Animals'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end

#Create a new shelter
shelter = Shelter.new("Animals R Us")

# Call the menu method, which returns a string with the reponse, and assign that to the variable response
response = menu

# program loop
while response != 'q'
  case response
  when '1'
    # call the list_animals method from our shelter object
    puts shelter.list_animals
  when '2'
    puts shelter.list_clients
  when '3'
    print "Name: "
    name = gets.chomp.capitalize
    print "Age: "
    age = gets.chomp
    
    shelter.clients[name.downcase] = Client.new(name, age)

  when '4'
    print "Name: "
    name = gets.chomp.capitalize
    print "Species: "
    species = gets.chomp.capitalize
    print "Add Toy: "
    toy = gets.chomp.capitalize
    print "Do you need to add another toy?(Y or N): "
    response = gets.chomp.downcase
    while response == "y"
      print "Add another toy: "
      toy = toy + "," + gets.chomp.capitalize
      print "Would you like to add another toy? (Y/N):"
      
      response = gets.chomp.downcase

    end
      toys = toy.split(",")
      $shelter.animals[name.downcase] = Animal.new(name, species, toys)
      puts $shelter.animals[name.downcase]
  end
  # display menu again and get a new response
  response = menu
end