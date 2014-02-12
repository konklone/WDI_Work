#in case anyone is interested! for adding animals into a hash -->  def add_animals( new_animal )
#@animals[ new_animal.name ] = new_animal
#end


class Shelter
  def initialize(name)
    @name = name
    @client = []
    @animal = []
    @add_animal = {}
    @add_client = []
    @adopt_animal = []
    @return_animal = []
  end

  def add_client
    puts "What is your name?"
    @name = gets.chomp.downcase

    puts "Sorry to be rude, but how old are you?"
    @age = gets.chomp.to_s

    puts "Hello #{@name} Welcome!"


  end

  # this method should add an amimal to the shelter
  def add_animal(species, age)
    puts "What species of animal are you bringing in?"
    @species = gets.chomp.downcase

    puts "How old is the animal?"
    @age = gets.chomp.to_s
  end

  def return_animal
    puts "What species of animal are you bringing in?"
    @species = gets.chomp.downcase

    puts "How old is the animal?"
    @age = gets.chomp.to_s
  end

  # This should return an array of the list of clients for the shelter
  def client
    @client.push()
  end

  def to_s
    "The #{@name} shelter has #{@client.length} clients and #{@animal.length} animals"
  end
end

class Animal
  def initialize (name, species)
    @name = name
    @species = species
    @toy = []
  end

  def add_toys(toy)
    @toy.push(toy)
  end

  def to_s
    "#{@name} the #{@species} loves to play with his/her #{@toy}"
  end
end

class Person
  def initialize(name, age)
    @name = name
    @age = age
    @animal = []
  end

  # def add_person(name, age)
  #   puts "What is your name?"
  #   @name = gets.chomp.downcase

  #   puts "Sorry to be rude, but how old are you?"
  #   @age = gets.chomp.to_s
  # end

  def to_s
    "#{@name} is #{@age} years and is the proud owner of #{@animal}"
  end
end



# animal_1 = Animal.new("lucky", "dog")
# animal_1.add_toys("bacon squeeze")

# animal_2 = Animal.new("crusty", "cat")
# animal_2.add_toys("cat nip")

# person_1 = Person.new("Harry", "35")
# person_2 = Person.new("Sue", "28")


# puts happi_trails
# puts animal_1
# puts animal_2
# puts person_1
# puts person_2


