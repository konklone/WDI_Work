#instance variable @title available to instances methods of class Movie

class Movie
	def initialize(title)
		@title = title
	end

	def title
		@title
	end
end

require 'pry'

class Person
	def initialize(name, genres_enjoyed = [])
		@name = name
		@genres_enjoyed = genres_enjoyed
	end

	def name
		@name
	end

	def genres_enjoyed
		@genres_enjoyed
	end

	def watch(movie)
		if genres_enjoyed.include?(movie.genre)
			puts "#{self.name} is watching #{movie.title}"
		else

		end
	end
end

# snake_on_a_plane = Movie.new("Snakes on A Plane")
# snake_on_a_plane.title


class ScaryMovie < Movie
	def genre
		"scary"
	end

	def title
		#super refers to Movie's variable title within ScarMovie's title
		#variable inside variable
		"DONT WATCH ANYTHING SCARY, especially #{super}"
	end
end

class FishComedy < Movie
	def genre
		"fish comedy"
	end
end


jason = ScaryMovie.new("Friday the 13th")

nemo = FishComedy.new("Finding Nemo")
jeff = Person.new("Jeff")

jeff.genres_enjoyed = [nemo.title]

jeff.watch(nemo)
jeff.watch(jason)
