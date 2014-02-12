### Shelter Class ###

class Shelter
   def initialize(name)
      @name = name
      @client_with_animal = {}
   end

   def name
      @name
   end

   def add_client(client_name, client_obj)
      added_client = {client_name => client_obj}
      @client_with_animal.merge!(added_client)
   end

   def add_animal_to_shelter(animal)
      @client_with_animal["No Client"] << animal
   end

   def display_clients
      puts "\n#{self.name} Clients:"
      @client_with_animal.each do |k,v| 
         if k != "No Client"
            puts v.to_s
         end
      end
   end

   def display_animals
      puts "\n#{self.name} Animals:"
      @client_with_animal["No Client"].join(", ")
   end

   def animal_adoption(adopting)

   end

   def to_s
      "Shelter #{self.name} has #{@client_with_animal.keys.count.to_i - 1} clients and #{@client_with_animal.values.count} animals."
   end
end


# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.