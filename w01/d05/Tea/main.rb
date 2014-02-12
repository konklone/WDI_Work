require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require 'pry'

#This displays menu options and gets response 
def menu
  puts "(C)-New Client\n(A)-New Animal\n(Q)-Quit"
  puts "(DC)-Display Clients\n(DA)Display Animals"
  puts "(AA)-Adopt Animal\n(SA)-Surender Animal"
  gets.chomp.downcase
end

#Creates Shelter on start 

happy_tails = Shelter.new("Happy Tails Animal Shelter")

response = menu

while response != 'q'
  case response
  when "c"
    puts "Client Name:"
    name = gets.chomp.downcase
    puts "Client Age:"
    age = gets.to_i
    happy_tails.clients[name] = Client.new(name, age)
  when "a"
    puts "Animal Name:"
    name = gets.chomp.downcase
    puts "Animal Species:"
    species = gets.chomp.downcase
    happy_tails.animals[name] = Animal.new(name, species)
  when "dc"
    puts happy_tails.list_clients
  when "da"
    puts happy_tails.list_animals
  when "aa"
    puts "Are you an existing client? Y/N"
    y_or_n = gets.chomp.downcase
    if y_or_n == "n"
      puts "Please create a new Client Profile"
      response = menu
    elsif y_or_n == "y"
      puts "select your name from the list"
      puts happy_tails.list_clients
    end
  end
  response = menu
end


