require './animals.rb'
require './clients.rb'
require './shelters.rb'
require './seeds.rb'

#require "pry"
#binding.pry

puts "~~~~~~Animal Shelter Management~~~~~~\n"
puts "Please choose an option number below: \n\nAnimals: (1)\nClients: (2)\nShelters: (3)\nQuit: (4)\n"
app_option1 = gets.chomp

case app_option1

  when "1"
    puts "What would you like to do? \n\nCreate New Animal Profile: (1)\nList of Animals: (2)\nSurrender Animal: (3)\nAnimal Toy Directory: (4)"
    app_option2 = gets.chomp.downcase
    
    if app_option2 == "1"
      puts "New Animal Profile\n"
      print "Name: "
      name = gets.chomp.downcase.to_s

      print "Species: "
      species = gets.chomp.downcase

      new_animal = Animal.new(name, species)

      puts "New #{species} profile created. Name: #{name.capitalize}"

    elsif app_option2 == "2"
      #puts "Please choose shelter: \n"
      puts "Animal list \n "
      puts "This section is under construction. Please check back later."

    elsif app_option2 == "3"
      puts "Surrender Animal"
      puts "This section is under construction. Please check back later."

    elsif app_option2 == "4"
      # puts "Please enter animal"
      #   lucky_animal = gets.chomp.downcase.to_s

        #
        
      # puts "Please enter toys for #{name} (separated by a comma)."
      # give_toy = gets.chomp.downcase.to_s

      #puts give_toy

      #puts "This section is under construction. Please check back later."
     
     else
      puts "Command not found. Please try again."
    end
    
  when "2"
    puts "What would you like to do? \n\nCreate New Client Profile: (1)\nList of Clients: (2)"
    app_option2 = gets.chomp.downcase

    if app_option2 == "1"
      puts "New Client Profile\n"
      print "Name: "
      name = gets.chomp.downcase.to_s

      print "Age: "
      age = gets.chomp.downcase

      Client.new(name, age)

      puts "New client profile created. \nName: #{name.capitalize}\nAge: #{age}"

    elsif app_option2 == "2"
      #puts "Please choose shelter: \n"
      #puts "Client list"
      
      puts "This section is under construction. Please check back later."

    end 
  
  when "3"
    print "Shelter Name: "
    new_shelter = Shelter.new(gets.chomp.downcase)
    puts "A new shelter named, \"#{shelter_name.name.capitalize}\" has been created!"

    puts new_shelter

  when "4"
end

$default_shelter = Shelter.new("HappiTails")


############## Class Functionality Checks Below ###############

# air_bud = Animal.new( "Air Bud", "dog")
# air_bud.give_toy "basketball"

# puts air_bud.to_s

# gina_fina = Client.new("Gina Fina", "39")
# gina_fina.pets_owned "parrot"

# puts gina_fina.to_s

# big_woof = Shelter.new("Big Woof")

# puts big_woof.to_s


