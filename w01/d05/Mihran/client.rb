class Client

  def initialize(name, age)
    @name = name
    @age = age
    @clients_pets = []
  end

  def add_pet (animal)
    @clients_pets.push(animal)
  end

  def get_name  ###this is a getter###
    @name
  end

  def get_pets
    @clients_pets
  end

  def abandon_pet (index)
    @clients_pets.slice!(index)
  end


  def to_s
    return " #{@name.capitalize}, who is #{@age}  years old and has these pets: #{@clients_pets.join(", ")}.  "
  end

end



# - Client:
#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.
#   - When we print an client to a string, it should tell us about its name, age and the number of pets.

