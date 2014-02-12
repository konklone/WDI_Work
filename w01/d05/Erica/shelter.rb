# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print a shelter to a string, it should tell us about its name, the number of clients, and the number of animals.
class Shelter
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
    @adoption_database = {}
  end

  def name 
    @name
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  # Shelter animal
  def animals(pet)
    @animals.push(pet)
  end

  # Shelter client(s)
  def clients(client)
    @clients.push(client)
  end

  # "Display all animals" list 
  def animals_list 
    @animals.each do |animals|
  end

  def clients_list
    @clients.join("|")
  end

  def adopt(clients, animals)
    @adoption_database[client] = animals
  end

  def return(client)
    @adoption_database.delete(client)
  end
  
  def adoption_database_reader
    @adoption_database
  end

  # print a shelter to a string
  def to_s
   "#{@name.capitalize} has #{@clients.size} clients #{@clients.join(", ")} and #{@animals.size} animals: #{@animals.join(" , ")}."
  end
end

shelter_uno = Shelter.new("Uno")
shelter_uno.animals("bruno" "kelly")
puts shelter_uno.animals

