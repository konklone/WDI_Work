# Create the shelter class
class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  # add a new client to the current shelter
  def add_client
    puts "What is your name?"
    name = gets.chomp.downcase

    puts "Sorry to be rude, but how old are you?"
    age = gets.chomp.to_s

    puts "Hello #{name} Welcome!"

  end

  def list_client
    @clients.join("\n")
  end

  def list_animals
    @animals.join("\n")
  end

  # This method will add an animal to the shelter
  def add_animal
     puts "What species are you bringing into the shelter?"
     adopt_species = gets.chomp.downcase

     puts "How old is the animal?"
     adopt_age = gets.chomp.to_i
     shelter.animal << Animal.new(species, age)
  end

  # This method will remove an animal from the shelter.  It will be adopted
  def remove_animal
    puts "What species are you interested in adopting?"
     adopt_species = gets.chomp.downcase

     puts "How old would you like your new pet to be (please enter 0 if you want a new born)"
     adopt_age = gets.chomp.to_i

     puts "Thank you!"
  end

  def to_s
    "The #{@name} shelter has #{@client.length} clients and #{@animal.length} animals"
  end
end

# Create the client class
class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animals = []
  end

  def to_s
    "#{@name} is #{@age} years and is the proud owner of #{@animal}"
  end
end

# Creat the animal class
class Animal
  def initalize(species, name)
    @species = species
    @name = name
    @toys = []
  end

  def add_toy
  end

  def to_s
    "#{@name} the #{@species} loves to play with his/her #{@toy}"
  end
end

