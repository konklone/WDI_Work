require_relative "happy_tails"
require_relative "seeds"
require 'pry'


def menu
  puts "\n\n*** Hello Welcome to Happy Tails ***\n\n"
  puts '1 : Create Animal' 
  puts '2 : Display Animals'
  puts '3 : Create Client'
  puts '4 : Display Clients'
  puts '5 : Adopt an Animal'
  puts '6 : Give Back a Pet'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end


response = ""

while response != 'q'
  response = menu

  case response
  
  when '1'
    # Create a new Animal!!!!!
     puts "Please Enter your Animal name"
     a_name = gets.chomp.downcase
     puts  "OK great What kind of Animal is it?"
     species = gets.chomp.downcase
     puts "Cool so what toys do you want?" 
     toys = gets.chomp.downcase
     animal = Animal.new(a_name, species)
     happy_tails.animals.push(animal)
     
  
  when '2'
    #binding.pry
    # Look up Animals!!!!
    list_animals_array = happy_tails.list_animals
    if list_animals_array.empty?
      puts "I'm sorry, there are no animals."
    else
      puts list_animals_array
    end
  
  when '3'
    # Create a new Person
    puts "Please Enter your name"
    name = gets.chomp.downcase
    puts "Please Enter your age"
    age = gets.chomp.to_i
    new_client = Client.new(name, age)
    happy_tails.clients.push(new_client)
    happy_tails.clients
    menu
  
  when '4'
      list_clients_array = happy_tails.list_clients
      if list_clients_array.empty?
      puts "I'm sorry, we have no clients."
    else
      puts list_clients_array
    end
    
    when "5"
      animals_array = happy_tails
        if animals_array.list_animals.empty?
          puts "I'm sorry, we have no animals to adopt."
       else
          puts animals_array
          adopt = happy_tails.list_animals.pop 
          puts  "Here's Your New Pet"  
          print adopt 
        end  
   
    when "6"
      animals_array = happy_tails
      puts "Are You Sure You Want to give me back Y or N"
      response = gets.chomp.downcase
      if 'y'
          adopt = happy_tails.list_animals.insert 
          puts  "I'm Sorry I Couldn't Make You Happy"
        else
          puts "Thanks For Keeping Me!"
      end
   
   when "q"
      break
  else
    puts "Wrong input Please Choose a Number 1-6 or enter Q to leave! "
  end
end

