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
		"#{@name.capitalize} is a #{@species}, and has the following toys: #{@toys.join(" , ")}"
	end
end



