class Client

	def initialize(name, age)
		@name = name
		@age = age
		@pets = Array.new
	end

	def name
		return @name
	end

	def age
		return @age
	end

	def pets
		return @pets
	end

	def to_s
		return "#{name} is #{age} years old and has this many pets: #{pets.length}"
	end

end
