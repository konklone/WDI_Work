# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.

class Shelter 
  def initialize(name)
    @name = name
    @animals = [ ]
    @clients = [ ]
    @adoption_database = {}  #populated by client/animal key/values
  end

  def display_animals
    puts "#{@animals.join(", ")}"
  end 

  def display_clients
    puts "#{@clients.join(", ")}"
  end
  #writes animal paramenter string into animal array
  def animal_add(animal)
    @animals << animal
  end
#writes client paramenter string into client array
  def clients_add(client)
    @clients << client
  end
  
  def adopt(client, animal)
     @adoption_database[client] = animal
  end

  def remove(client)
    @adoption_database.delete(client)
  end

  def animals  #animal reader
    @animals
  end

  def adoption_database_reader
     @adoption_database
  end
  
  def to_s
    return "Our name is #{@name} we have #{@clients.count} clients and  #{@animals.count} animals"
  end

  def print
    puts self.to_s
  end





end

# shelter_example = Shelter.new("Sparky's")
# shelter_example.animal_add("Hercules")
# shelter_example.animal_add("Lady")
# shelter_example.animal_add("Hero")
# shelter_example.clients_add("Julie")
# shelter_example.clients_add("Justin")
# shelter_example.clients_add("Paris")

# puts shelter_example.to_s



# shelter_example.adopt("Julie", "Lady")
# shelter_example.adopt("Justin", "Hero")

# puts shelter_example.adoption_database_reader

# shelter_example.remove("Julie")

# puts shelter_example.adoption_database_reader




