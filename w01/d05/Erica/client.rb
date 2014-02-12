 # Client:
 #  - A client should have a name.
 #  - A client should have an age.
 #  - A client can have multiple pets (animals), but it doesn't start with any.
 #  - When we print an client to a string, it should tell us about its name, age and the number of pets.
class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animal = {}
  end

  #Define the instance variables with their proper methods
  def name
    @name
  end

  def age
    @age
  end

  def animal
    @animal
  end

  def add_animal(pet)
  @animal.push(pet)
  end

  #puts method
  def to_s
  "The client #{@name} is #{@age} years old and has #{@animal.size} pet(s): #{@animal.join( " )}"
  end



