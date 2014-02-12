require_relative "./shelter"
require_relative "./animal"
require_relative "./client"
require_relative "./seed"
 
# Shelter data moved to seed file.
# first_shelter = Shelter.new("WDISPCA")
 
# seed.rb 
 
 
def menu
  puts "***Welcome to the Animal Shelter***"
  puts "Would you like to:\n
  (1)Create an animal\n
  (2)Create a client\n
  (3)Display all animals\n
  (4)Display all clients\n
  (5)Adopt\n
  (6)Return\n
  (Q) Quit the program"
  gets.chomp.downcase
end
 
response = menu
 
# This process will continue until the user selects a quit option from the menu
while response != "q"
  case response
    when "1"
     
      puts "What is the animal's name?"
      name = gets.chomp
 
      puts "What type of animal is it?"
      species = gets.chomp
 
      animal_obj = Animal.new(name, species)
 
      puts "How many toys does your animal have?"
      num_toys = gets.chomp.to_i
 
      while num_toys > 0
        puts "enter toy:"
        toy_name = gets.chomp
        animal_obj.add_toys(toy_name)
        num_toys -= 1
      end
     
      first_shelter.animal_add(animal_obj)
 
      response = menu
 
    when "2"
      puts "What is the client's name?"
      name = gets.chomp
 
      puts "What's the client's age?"
      age = gets.chomp
 
      client_obj = Client.new(name, age)
 
      puts "How many pets does your animal have?"
      num_pets = gets.chomp.to_i
 
      while num_pets > 0
        puts "enter pet:"
        pet_name = gets.chomp
        client_obj.add_pet(pet_name)
        num_pets-= 1
      end
     
      first_shelter.clients_add(client_obj)
 
      response = menu
 
    when "3"
      puts first_shelter.display_animals
      response = menu
 
    when "4"
      puts first_shelter.display_clients
      response = menu
 
    when "5"
      puts "Adopt an animal"
      puts "Who will be adopting?"
      client = gets.chomp
     
      puts "Which animal?"
      animal = gets.chomp
 
      first_shelter.adopt(client, animal)
      puts first_shelter.adoption_database_reader
      response = menu
 
    when "6"
 
      puts "Return an animal"
      puts "Who is returning the animal?"
      client = gets.chomp
 
      first_shelter.remove(client)
 
      puts "You should be ashamed of yourself!"
      response = menu
 
    else
      puts "Please enter a menu option"
 
    end
 
 
 
 
 
 
 
 
end