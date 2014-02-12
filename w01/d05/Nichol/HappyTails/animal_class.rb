class Animal

	def initialize(name, species)
		@name = name
		@species = species
		@toys = Array.new

	end

	def name
		return @name
	end

	def species
		return @species
	end

	def toys
		return @toys
	end

	#add so it is sad when he has no toys
	def to_s
		return "my names is #{name} and i am a #{species} and these are my toys: #{toys.join(", ")}"
	end

end



