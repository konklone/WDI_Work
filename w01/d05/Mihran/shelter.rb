class Shelter

  def initialize(name)
    @name = name
    @animals_in_shelter = [] 
    @clients_of_shelter = []
  end

  def add_animal(animal)
    @animals_in_shelter.push(animal)
  end
  
  def add_client(client)
    @clients_of_shelter.push(client)
  end

  def display_all_animals
    puts " The animals in the shelter are: "
    puts @animals_in_shelter
  end

  def display_all_clients
    puts " The shelter's clients are: "
    puts @clients_of_shelter
  end

  def get_all_animals
    @animals_in_shelter
  end

  def get_all_clients
    @clients_of_shelter
  end

  def get_client_at_index (index)
    @clients_of_shelter[index]
  end


  def adopt (animal_index, client_index)
    adoptee = @animals_in_shelter.slice!(animal_index) 
    @clients_of_shelter[client_index].add_pet(adoptee)
    puts "Congratulations! #{adoptee.get_name.capitalize}'s steward is now #{@clients_of_shelter[client_index].get_name}!"
  end

  def abandon (animal_index, client_index)
    abandonee = @clients_of_shelter[client_index].abandon_pet(animal_index)
    self.add_animal(abandonee)
        puts "Shame on you! Let's hope #{abandonee.get_name.capitalize} finds a better new owner than #{@clients_of_shelter[client_index].get_name}!"
  end


  def to_s
    return " #{@name.capitalize} shelters #{@animals_in_shelter.count} animal(s), and serves #{@clients_of_shelter.count} client(s)"
  end

end

# happitails = Shelter.new("HappiTails")
# happitails.add_animal("Derek")
# happitails.add_client("Winston")
# happitails.display_all_animals
# happitails.display_all_clients
# puts happitails.to_s



# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.

