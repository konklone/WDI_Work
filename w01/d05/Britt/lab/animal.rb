
class Animal
	def initialize(name, species)
		@name = name
		@species = species
		@toys = []
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

	def give_animal_toy(toy)
		@toys << toy
	end

	def list_toys
		@toys.join(", ")
	end

	def to_s
		if self.toys.count > 1
			"#{self.name} is a #{self.species} with the following toys: #{self.list_toys}"
		elsif self.toys.count == 1
			"#{self.name} is a #{self.species} with the following toy: #{self.list_toys}"
		else
			"#{self.name} is a #{self.species} with no toys."
		end
	end

end
