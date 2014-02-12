# Shelter:

# A shelter should have a name
# A shelter can have multiple animals, but it doesn't start with any.
# A shelter can have multiple clients, but it doesn't start with any.
# A shelter should be able to display all of its clients.
# A shelter should be able to display all of its animals.
# A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
# A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
# When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.


class Shelter

	def initialize(name)
		@name = name
		@animals = Array.new
		@clients = Array.new

	end

	def name
		return @name
	end

	def animals
		return @animals
	end

	def clients
		return @clients
	end

	def facilitate_adoption(client, animal)
		#assign animal to client as a pet
		#remove animal from array

		client.pets << animal
		self.animals.delete(animal)

		puts "good work #{client.name}, you have adopted #{animal.name}"
	
	end
	
		#remove from pets
		#add to animals

		client.pets.delete(animal)
		self.animals << animal
	
	end

	def to_s
		return "#{name}, #{clients.length}, #{animals.length}"
	end



end
