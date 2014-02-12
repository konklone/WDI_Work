class Shelter

	def initialize(name)
		@name = name
		@clients = {}
		@animals = {}
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

	def list_clients
		@clients.values
	end


	def list_animals
		@animals.values
	end

	def to_s
		"This shelter's name is #{@name}, and has ALL of these nice animals: #{@animals.join(" , ")}"
	end
end

