##### Happy Tails Site #######
#require 'pry'
require_relative "client"
require_relative "animal"
require_relative "shelter"

##### The program begins here
# 1st it creates an empty shelter for the user.
shelter = Shelter.new("Animals R Us")

# Then it welcomes the user with the new shelter name 
# and gives a menu

puts "Welcome to #{shelter.name}! "

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

while response != "q"

  case response 
    when "1"
  puts "Your name?"
  name = gets.chomp
  puts "Your age?"
  age = gets.chomp
  
shelter.clients.push(Client.new(name, age))
require 'pry'
  puts "Do you have a pet?(Y or N)"
    do_u_have_a_pet = gets.chomp.downcase
      
      case do_u_have_a_pet
      
      when "y"
        puts "How many? (Please enter an integer)"
        how_many = gets.chomp.to_i
        
        if how_many >= 2 
          puts "You have too many animals, goodbye!"
          break
        
        else
          puts "What is your pets name?"
          name = gets.chomp.downcase
          puts "What is the species?"
          species = gets.chomp.downcase
          puts "Does your pet have a toy?"
          toys_y_or_n = gets.chomp.downcase

          case toys_y_or_n

          when "y"
            puts "What kind of toy?"
            toys = gets.chomp.downcase
            shelter.animals.push(Animal.new(name, species, toys))
          when "n"
            puts "#{name}, you have #{shelter.pets}"
            puts "Goodbye!"
            break
          end
              puts "Does your pet have another toy?(Y or N)"
              gets.chomp.downcase

        if gets.chomp == "y"
          puts "What kind of toy?"
          toys = gets.chomp.downcase
          shelter.toys.push(another_toy)
        shelter.animals.push(Animal.new(name, species, toys))

        elsif gets.chomp == "n"
          puts menu
# This is where I realize I need to use hashes not arrays to store
# animals and their toys in the shelter class. But I tried it out, 
# by putting in shelter class: @animals = {} and @toys = {} 
# and then adding the variables below to hash like this:
# $shelter.animals[name.downcase] = Animal.new(name, species, toys)
# but it wasn't working for me so I came back to using array.
        end
        end
      end
  end
end
