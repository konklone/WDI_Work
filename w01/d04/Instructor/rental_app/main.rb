# include our classes 
require_relative 'database'


# Display the menu. 
def gets_input
  puts "\n\n*** Welcome to HappiTails Animal Shelter ***\n\n"
  puts '1 : Display all animals'
  puts '2 : Display all clients'
  puts '3 : Add an animal to the shelter'
  puts '4 : Add a client to the shelter'
  puts '5 : Adopt an animal'
  puts '6 : Put animal up for adoption'
  puts "Q : Quit\n\n"
  @response = gets.chomp.downcase
end


# Call the menu method.
response = menu

# program loop
while response != 'q'
  case response
  when '1'
    # prints the list of animals in the shelter
    puts shelter.list_shelter_animals
  when '2'
    # prints a list of the shelter's clients
    puts shelter.list_shelter_clients
  when '3'
    # adds an animal to the shelter
    print "Enter animal name:"
    animal_name = gets.chomp
    print "Enter animal species:"
    species = gets.chomp
    # Inserts a new animal into the shelter array
    shelter.shelter_animals[animal_name] = Shelter.new(animal_name, species)
  when '4'
    # adds a client to the shelter array
    print "Client name:"
    client_name = gets.chomp
    print "Client age:"
    client_age = gets.chomp.to_i
    shelter.shelter_clients[client_name] = Shelter.new(client_name, client_age)
  # when '5'
  #   # client adopts an animal from shelter. deletes animal from shelter animal hash. adds animal to 
  #   print "Which client is adopting?"
  #   client_name = gets.chomp
  #   print "Which animal are they adopting?"
  #   animal_name = gets.chomp


  # when '6'
    
  # end
  # display menu again and get a new response
  response = menu
end