require './animal.rb'
require './client.rb'
require './shelter.rb'
require 'pry'

$happitails = Shelter.new("HappiTails")

require './seed.rb'

puts "Welcome to HappiTails animal shelter!"

begin 

puts "To create an animal, enter (ca).  To create a client, enter (cc). To list all animals, enter (la). To list all clients, enter (lc). To adopt an animal, enter (aaa), to put an animal up for adoption, enter (ufa). To quit, simply enter (q). " 

user_input = gets.chomp.downcase

  case user_input
    when "ca" ### this adds a new animal to the shelter ###
        puts "OK! We're adding a new animal."
         puts "What is the animal's name?"
        name = gets.chomp.downcase

        puts "What is #{name.capitalize}'s species?"
        species = gets.chomp.downcase

        puts "If  #{name.capitalize} the #{species} has any toys, list them now, separated by commas and spaces. If not, simply press enter."
        toys = gets.chomp.downcase.split(",")

        newanimal = Animal.new("#{name}", "#{species}")
        newanimal.add_toys(toys)
        
        $happitails.add_animal(newanimal)  #this is the crucial bit ##
        
        # puts newanimal.to_s ## this is just to make sure it works thus far ##

    when "cc" ###this adds a new client to the shelter###
      puts "OK! We're adding a new client."

      puts "What is the client's name?"
        name = gets.chomp.downcase
        puts "What is #{name.capitalize}'s age?"
        age = gets.chomp.downcase
        
        newclient = Client.new(name, age)

        add_pet = true

while add_pet
        puts "Add an existing pet for #{newclient.get_name}? [y or N]"
        add_pet = gets.chomp.downcase[0] == "y"

        if(add_pet)
           puts "What is the animal's name?"
          name = gets.chomp.downcase

          puts "What is #{name.capitalize}'s species?"
          species = gets.chomp.downcase

          puts "If  #{name.capitalize} the #{species} has any toys, list them now, separated by commas and spaces. If not, simply press enter."
          toys = gets.chomp.downcase.split(",")

          newanimal = Animal.new("#{name}", "#{species}")
          newanimal.add_toys(toys)

        newclient.add_pet(newanimal)
        end

end

        $happitails.add_client(newclient)

        # puts newclient.to_s ### just to test functionality so far ###
        # # happitails.display_all_clients ### testing also ##

    when "la" # this lists all animals in the shelter###
      $happitails.display_all_animals

    when "lc" #this lists all clients of the shelter###
      $happitails.display_all_clients

    when "aaa" ###this facilitates an adoption##
      ### code should remove the animal from the  @animals_in_shelter array and put them into the @clients_pets array  ####
      puts "OK. We are happy to facilitate pet adoptions. Enter the number of the client."
      puts $happitails.get_all_clients.map.with_index{|client, i| "#{i+1}. #{client.get_name}"}
      client_index = gets.chomp.to_i()-1
      puts "Which pet would the client like to adopt?"
      puts $happitails.get_all_animals.map.with_index{|animal, i| "#{i+1}. #{animal.get_name}"}
      animal_index = gets.chomp.to_i() -1

      $happitails.adopt(animal_index, client_index)

    when "ufa" ###this puts an animal up for adoption###
      ### code should remove the animal from the  @clients_pets array and put them into the @animals_in_shelter array  ####

      puts "OK. We are happy to put a pet up for adoption. Which client would like to put up a pet for adoption?"
      puts $happitails.get_all_clients.map.with_index{|client, i| "#{i+1}. #{client.get_name}"}
      client_index = gets.chomp.to_i()-1

      puts "Which pet would the client like to put up for adoption?"
      puts $happitails.get_client_at_index(client_index).get_pets.map.with_index{|animal, i| "#{i+1}. #{animal.get_name}"}

      animal_index = gets.chomp.to_i() -1

      $happitails.abandon(animal_index, client_index)

    end

end until user_input == "q"

