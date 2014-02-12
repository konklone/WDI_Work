### HappiTails MAIN ###

require "./animal"
require "./client"
require "./shelter"
load "./seeds.rb"

def menu
   puts "\n*** HappiTails Shelter ***"
   puts "\n(1) Add a client, (2) Add an animal, (3) Display all clients, (4) Display all animals, (5) Adopt an animal, (6) Put an animal up for adoption, or (Q) Quit:"
   gets.chomp.downcase
end

response = menu

while response !="q"
   if response == "1"
      puts "Please enter the client's name:"
      client_name = gets.chomp.capitalize
      puts "Please enter the client's age:"
      client_age = gets.chomp

      new_client = Client.new(client_name, client_age)
      $happitails.add_client(client_name, new_client)

      puts "\nClient added!"

   elsif response == "2"
      puts "Please enter the animal's name:"
      animal_name = gets.chomp.capitalize
      puts "Please enter the animal's species:"
      animal_species = gets.chomp.downcase
      puts "Does this animal have any toys? (Yes or No)"
      animal_toys_decision = gets.chomp.downcase

      new_animal = Animal.new(animal_name, animal_species)
      $happitails.add_animal_to_shelter(new_animal)

      if animal_toys_decision == "yes"
         puts "Please list the animal's toys (separate each toy with a comma):"
         animal_toys = gets.chomp.downcase
         new_animal.add_toys(animal_toys)
      else
         new_animal.add_toys("No toys")
      end

      puts "\nAnimal added!"

   elsif response == "3"
      puts $happitails.display_clients

   elsif response == "4"
      puts $happitails.display_animals

   elsif response == "5"
      puts "Please chose an animal from the following list."
      puts $happitails.display_animals
      puts "\nEnter the name of the animal you would like to adopt:"
      adopt_animal = gets.chomp.capitalize

      puts "Please enter your name:"
      client_adopt_name = gets.chomp.capitalize
      if $happitails.has_key?(client_adopt_name) == true
         # {"name" => ar.select {|l| l.include? 'name'}
         $happitails["No Client"].delete(adopt_animal)
         #$happitails[client_adopt_name].push()
         puts "#{client_adopt_name} adopted #{adopt_animal}!"
      else
         puts "I'm sorry that client does not exist. You must create a new client before you adopt an animal."
   end

   elsif response == "6"
      puts $happitails.display_animals
   else
      puts "\nThat is not an option."
   end
   response = menu
end

