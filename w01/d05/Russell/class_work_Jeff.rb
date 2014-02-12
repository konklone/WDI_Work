# class Movie
# def initialize(title)
#  	@title
# end

# def title
# 	@title
# end
# end

# snakes_on_plane = Movie.new("Snakes on a Plane")

# snakes_on_plane.title


#### THis returns Snakes on a Plane 


class Movie
	def initialize(title)
 		@title
	end

	def title
		@title
	end
end

class Person
	def intitialize(name)
		@name
	end

	def name
		@name
	end
	
	def watch(movie)
		puts "lets watch #{movie.title}"
end


## Assign snaks on a plane, return an instance of the peron class

snakes_on_plane = Movie.new("Snakes on a Plane") ##this returns an instance of the Movie class

puts snakes_on_plane.title

jeff = Person.new("Jeff")

jeff.watch(snakes_on_plane)