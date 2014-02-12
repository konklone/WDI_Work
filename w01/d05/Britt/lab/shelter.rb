
class Shelter
	def initialize(name)
		@name = name
		@animals = []
		@clients = {}
	end

	def name
		@name
	end

	def clients
		@clients
	end

	def animals
		@animals
	end

	def rescue_animal(animal)
		@animals << animal
	end

	def acquire_client(client)
		@clients[client.name] = client
	end
	
	def list_clients
		@clients.keys.join(", ")
	end

	def list_animals
		@animals.join(", ")
	end

	def client_adopts(animal, client)
		# returns animal, which must be
		# added to client's pets array
		client.add_pet( @animals.delete(animal) )
	end

	def client_dumps(animal, client)
		# returns animal, which must be
		# added to shelter's animal array
		rescue_animal( client.pets.delete(animal) )
	end

	def to_s
		"#{self.name} is an animal shelter serving #{self.clients.keys.count} clients and #{self.animals.count} animals."
	end

end
