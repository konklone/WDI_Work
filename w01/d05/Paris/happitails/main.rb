require_relative 'animal'
require_relative 'shelter'
require_relative 'client'
# require_relative 'seed'
#require "pry"

def menu 
  puts "\n\n*** HappiTails ***\n\n"
  puts '1 : Enter a new pet into our system'
  puts '2 : Create your profile' 
  puts '3 : Display all animals'
  puts '4 : Display all clients'
  puts '5 : Adopt a pet'
  puts '6 : Return a pet'
  puts 'q : Quit'
  response = gets.chomp.downcase
end

shelter = Shelter.new("HappiTails")
name = Client.new("Sally", 20)
shelter = Shelter.new("HappiTails")
shelter.clients["Bob"] = Client.new("Bob", 20)
shelter.clients["Sally"] = Client.new("Sally", 20)
shelter.animals["Goober"] = Animal.new("Goober", "cat", "n")
shelter.animals["Rocket"] = Animal.new("Rocket", "dog", "n") 
shelter.animals["J"] = Animal.new("J", "dog", "n") 
shelter.animals["Max"] = Animal.new("Max", "dog", "n")
petname = Animal.new("Max", "dog", "n")
petname = Animal.new("Max", "dog", "n")
name = Client.new("Sally", 20)
name2 = Client.new("Jee", 20)
catlady = Client.new("Cat Lady", ["cats"])

response = menu 

while response != 'q'

  case response
  when '1'
    print "Animal's name: "
    petname = gets.chomp
    print "Species: "
    species = gets.chomp
    print "Has toys? Y or n? "
    toys = gets.chomp.downcase

    while toys == 'y'
      puts "List the toys here (i.e. ball, frisbee): "
      toys = gets.chomp
    end 
      puts "Thank you. Let's find this bundle of joy a home."
      shelter.animals[petname] = Animal.new(petname, species, toys)

  when '2'
    print "Your name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i #why do we not need chomp? 
    shelter.clients[name] = Client.new(name, age)
    print "Thank you for creating a profile. Welcome to our commmunity."

  when '3'
    puts shelter.adoptables_list
 
  when '4'
    puts shelter.current_clients

  when '5'
    print "Your name: "
    name = gets.chomp   
      if shelter.clients[name].pets_list.count < 2 
      puts " "
      puts "Which animal would you like to adopt? "
      puts " "
      puts shelter.adoptables_list
      puts " "
      puts "Enter a name: "
      petname = gets.chomp  
      shelter.adopted_pet << shelter.remove_pet_from_shelter(petname)
      puts shelter.clients[name].add_pet(petname) # add to pets_list and print it out. 
    else
      puts "We apologize. You seem to have activated our hoarder alert. Please see Jeff at the front desk to adopt another pet."
    end
  when '6'
    print "Animal's name: "
    petname = gets.chomp
    print "Species: "
    species = gets.chomp
    print "Has toys? Y or n? "
    toys = gets.chomp.downcase

      while toys == 'y'
        puts "List the toys here (i.e. ball, frisbee): "
        toys = gets.chomp
      end 

    shelter.animals[petname] = Animal.new(petname, species, toys)
    shelter.return_pet_to_shelter(petname)
    shelter.clients[name].bring_pet_back(petname)
end 

response = menu
end



