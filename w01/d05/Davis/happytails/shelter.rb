class Shelter
	def initialize(name = nil, shelter_animals = {}, clients = {})
		@name = name
		@shelter_animals = shelter_animals
		@clients = clients
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def clients
		@clients
	end

	# def clients=(clients)
	# 	@clients = clients
	# end

	def shelter_animals
		@shelter_animals
	end

	def shelter_animals=(shelter_animals)
		@shelter_animals = shelter_animals
	end

	def list_animals
		#lists all animals
		#refer to rental for exact process
		shelter_animals.values.each { |animal| puts animal.name }
	end

	def list_clients
		#lists all clients
		#refer to rental for exact process
		clients.values.each { |client| puts client.name }
	end

	def facilitate_adoption(animal, client_for_adoption)
		clients[client_for_adoption.to_sym].animals[animal.to_sym] = shelter_animals.delete(animal.to_sym)
	end

	def facilitate_put_up(animal, client_for_put_up)
		client_for_put_up.animals[animal.to_sym] = $shelter1.shelter_animals.delete(animal.to_sym)
	end

	def animals_count
		#inside @clients hash find values(clients_instaneces)
		#inside client_instances find animal_instances
		result = 0
		@clients.each_value { |client_instance| result += client_instance.animals.count }
		result
	end

	def to_s
		"Shelter #{name} has #{clients.count} clients and #{}"
	end
end


# Shelter has:
# clients = {

# 	clients: => client_instances

# }

# Client has:
# animals = [
# 	animal_instances
# ]


# Animal has:
# toys = [
# 	toys_strings
# ]

