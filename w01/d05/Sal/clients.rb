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

	def to_s
	  if @pets.count == 1 
		"#{@name.capitalize} is #{@age} years old, and has #{pets.count} pet"
	  else
		"#{@name.capitalize} is #{@age} years old, and has #{pets.count} pets"
	  end
    end
end