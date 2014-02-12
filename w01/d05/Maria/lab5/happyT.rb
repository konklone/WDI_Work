class Client

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def name 
		@name 
	end

	def age
		@age 
	end

	def pets
		@pets.join(", ")
	end

	def to_s
		"#{name}, whose age is #{age} has #{pets} number of pets."
	end
end

class Animal

	def initialize(name, species, toys)
		@name = name
		@species = species
		@toys = toys
	end

	def name 
		@name
	end

	def species
		@species
	end

	def toys
		@toys
	end

	def to_s
		"#{name} is a #{species} and it has a #{toys} to play with."
	end
end

class Shelter

	def initialize(name)
		@name = name
		@animals = []
		@clients = []
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

	def to_s
		"#{name}! We have #{@clients.count} clients and #{@animals.count} animals "
	end
end

	



