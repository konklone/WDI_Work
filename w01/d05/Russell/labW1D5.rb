# require "pry"

class Animal
	def initialize(name, species, toys)
 		@name = name
 		@species = species
 		@toys = Toyarray.new 
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
		return "#{name} the wonderful #{species} is a blast. He has these toys: #{toys.join}, but could always use more!"
	end
end

class Client
	def intitialize(name, age, num_animals)
		@name = name
		@age = age
		@num_animals = num_animals
	end

	def name
		@name
	end

	def age
		@age
	end

	def num_animals
		@num_animals
	end

	def to_s
		return "#{@name} who is #{@age} years old has #{@num_animals.to_i} pets."
		if @num_animals.to_i >= 3
			puts "#{@name} cannot adopt any more pets. Thank you for sharing your love!"
	end
end

	
	# def watch(movie)
	# 	if self.genres_enjoyed.member? movie.genre
	# 	puts "#{self.name} is watching #{movie.title}"
	# end

class Shelter
	## < is an inheritance
	def initialize(name, num_adoptions, clients)
		@name = name
		@num_adoptions = num_adoptions
		@clients = ClientArray.new
	end
	
	def name
		@name
	end

	def num_adoptions
		@num_adoptions
	end

	def clients
		@clients
	end

	def push_to_array
		push.ClientArray.new 
	end 
end
end




person1 = Client.new("Russell", "23", "4") ##this returns an instance of the Movie class
# godfather = Movie.new("Godfather")

puts person1.name


animal1 = Animal.new("Mittens", "12", "6" )



