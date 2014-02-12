
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
		@pets
	end

	def add_pet(pet)
		@pets << pet
	end

	def list_pets
		@pets.join(", ")
	end

	def to_s
		"#{self.name} is #{self.age} years old and has #{self.pets.count} pets."
	end

end

class CatLady < Client
end