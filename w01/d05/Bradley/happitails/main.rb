require './shelter'
require './client'
require './animal'

#creates global variable $s, which is an instance of a Shelter

$s = Shelter.new('happitails')

#defines line break

def line
  puts " "
end

#method for adding an animal to shelter

def new_animal
  puts "Let's add a new animal to #{$s.name}!"
  line
  puts "What's the name of the animal?"
  animal_name = gets.chomp.downcase.capitalize
  line
  puts "What's the species of the animal?"
  species = gets.chomp.downcase
  line

  #initializes animal object with specified parameters, adds it to the no_clients object in the shelter

  $s.clients[:no_clients].animals[animal_name] = Animal.new(animal_name, species)

  #prompts user for number of toys, user then specifies each toy

  puts "Would you like to add any toys for this animal? Type a number of toys or type anything else to quit."
  line
  number_of_toys = gets.chomp.to_i

  unless number_of_toys == 0
    number_of_toys.times do |x|
      line
      puts "Type a toy:"
      toy = gets.chomp
      $s.clients[:no_clients].animals[animal_name].toys << toy
    end
  end

  line
  puts "Great! animal added with the following specifications :"
  $s.clients[:no_clients].animals[animal_name].to_s
  line
end

#special case of new client, CatLady

def cat_lady(name, age)

  #initiates CatLady object with arguments passed in from new_client method, adds to shelter

  $s.clients[name.downcase.to_sym] = CatLady.new(name.downcase.to_s, age)

  #goes through object containing all animals without owners to find animal objects with the species attribute of 'cat', pushes those objects to the cat lady's animals and removes them from the the homeless animals object

  $s.clients[:no_clients].animals.values.each do |animal|
    if animal.species == "cat"
      $s.clients[name.downcase.to_sym].animals[animal.name] = $s.clients[:no_clients].animals[animal.name]
      $s.clients[:no_clients].animals.delete(animal.name)
    end
  end

  puts "#{name} has been added to the system and has adopted the following pets cats : "
  line
  $s.clients[name.downcase.to_sym].animals.keys.each { |animal| puts animal}
end

#defines method for client creation

def new_client
  puts "Let's add a new client to #{$s.name}!"
  line
  puts "What's the name of the client?"
  line
  client_name = gets.chomp
  puts "What is the age of the client?"
  line
  client_age = gets.chomp

  #if new client is a cat lady, will run cat_lady method with the given arguments

  puts "Is the client a cat lady? If she is, type yes, otherwise type anything else."
  response = gets.chomp.downcase
  if response == 'yes'
    cat_lady(client_name.downcase.to_sym, client_age)
  else

  #otherwise creates instance of a client and adds it to the client hash in the shelter object with the given attributes

    $s.clients[client_name.downcase.to_sym] = Client.new(client_name, client_age)
    line
    puts "Great! client added with the following specifications :"
    puts $s.clients[client_name.downcase.to_sym].to_s
    line
  end
end

#goes through each client object's animal hash's values (animal objects) and prints each animal object

def display_animals
  puts "Here are all the animals in the shelter :"
  line
  $s.clients.values.each do |client|
     client.animals.values.each { |animal| animal.to_s }
  end
end

#goes through keys of clients hash in shelter object (which are client names) and prints them

def display_clients
  line
  puts "Here are all the clients in the shelter :"
  $s.clients.keys.each do |client| 
    unless client == :no_clients
      puts client.to_s.capitalize
    end
  end
  line
end

#method allowing existing client to adopting existing animal

def adoption(adopting = true)
  line
  puts "What is the client's name?"
  client_name = gets.chomp.downcase.to_sym
  moving_animal_to = client_name 
  moving_animal_from = :no_clients
  desciption = "The following animals are available for adoption : "

  #if client doesn't it exist, returns user to menu to create the client

  unless $s.clients.keys.include?(client_name)
    puts "Sorry, that client is not in the system. Please create them and then return here."
    shelter_app(false)
  end

  if adopting

    if $s.clients[client_name].animals.keys.length >= 2
      puts "HOW FUCKING DARE THEY. THEY DON'T NEED ANOTHER PET. THEY SHOULD TAKE CARE OF THEIR OWN."
      shelter_app(false)
    end

  else
    moving_animal_to = :no_clients
    moving_animal_from = client_name
    desciption = "The following animals are available to give up for adoption : "
  end

line
puts description
line
$s.clients[moving_animal_from].animals.values.each { |animal| animal.to_s}
line
puts "Select an animal by typing the name of the animal."
animal_name = gets.chomp.downcase.capitalize

 unless $s.clients[moving_animal_from].animals.keys.include?(animal_name)
    puts "Sorry, that animal is not in the system. Try again : "
    animal_name = gets.chomp.downcase.capitalize
  end

  $s.clients[moving_animal_to].animals[animal_name] = $s.clients[moving_animal_from].animals[animal_name]
  $s.clients[moving_animal_from].animals.delete(animal_name)
  line
  puts "Updated!"
  line
  puts "Here's #{client_name.to_s.capitalize}'s new profile :"
  line
  $s.clients[client_name].to_s
  line

end

#displays home menu

def menu
  line
  puts "Here are your options :"
  line
  puts "1 : Create an animal."
  puts "2 : Create a client."
  puts "3 : Display all animals."
  puts "4 : Display all clients."
  puts "5 : Client would like to adopt animal."
  puts "6 : Client would like to put up animal for adoption." 
  line
  puts "What would you like to do? Type one of the numbers above or anything else to quit."
end  

#defines method allowing user to make changes to the shelter object

def shelter_app(first_time = true)

  #if user is running this app for the first time, automatically creates a homeless animals object that is added to the clients hash of the shelter

  if first_time
    $s.clients[:no_clients] = Client.new('No Client', 'N/A')
    puts "Welcome to the Shelter Management System!"
  end

  #user must select an option by typing a number. Quits method if user types something other than 1-6.

  menu
  choice = gets.chomp.to_i
  if (1..6).include?(choice)
    case choice
      when 1
        new_animal
      when 2
        new_client
      when 3
        display_animals
      when 4
        display_clients
      when 5
        adoption
      when 6
        adoption(false)
    end

      #the false parameter runs the shelter_app method again, but bypasses the homeless animals object creation method

      shelter_app(false)
  else
      puts "Goodbye!"
  end
end

shelter_app