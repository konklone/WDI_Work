
require_relative 'shelter'
require_relative 'animal'
require_relative 'client'
require_relative 'seed'

class MakeShelter

def initialize(start)

start
puts start.name


  def prompt
    print ">"
  end   
  
  puts "What can we help you with today?"
  
  def menu
  puts "Make an (A)nimal, Make a (C)lient, (P)ets We Have, (L)ist of Clients"
  puts "(T)o Adopt a Pet , (R)eturn a Pet or (Q)uit"
  puts "Choose A | C | P | L | T | R | Q"
  prompt
  gets.chomp.downcase
  end
      
      choice = menu
      while choice != "q"
       case choice
        when "a"
          puts "Give your pet a name!"
          prompt
          name = gets.chomp
          puts "What kind of animal is it?"
          prompt
          species = gets.chomp
          puts "What kind of toy does it have?"
          prompt
          toys = []
          toys << gets.chomp
          new_pet = Animal.new(name, species, toys)
            start.add_pet(new_pet)
        when "c"
          puts "What is your client's name?"
          prompt
          name = gets.chomp
          puts "How old are they?"
          prompt
          age = gets.chomp
          puts "What pet do they have?"
          prompt
          pets = []
          pets << gets.chomp
          client = Client.new(name, age, pets)
          start.add_client(client)
        when "p"
          if start.animals.empty?
            puts "No animals yet! Try adding some!"
          else
            puts "Current number of animals: " + start.animal_ct.to_s
          start.list_animals
          end
        when "l"
          if start.clients.empty?
            puts "No clients yet! Try adding some!"
          else
            puts "Current number of clients: " + start.client_ct.to_s
           start.list_clients
          end
        when "t"
          start.adopt_pet
        when "r"
          start.return_pet
        end
        choice = menu
      end

    end
end