class Animal
	def initialize(name = nil, client = nil, species = nil, toys = [])
		#capitalize each word
		@name = name
		@client = client
		
		@species = species
		@toys = toys
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def toys
		@toys
	end

	def toys=(toys)
		@toys = toys
	end

	def client
		@client
	end

	def client=(client)
		@client = client
	end

	def to_s
		"#{name} is a #{@species} breed and has the following toys: #{@toys.join(", ")}"
	end
end
