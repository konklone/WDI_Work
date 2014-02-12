require 'pry'

class Movie
  # set the read write attributes when it's "attr_accessor" it's both read and write
  #attr_accessor :movie

  def initialize (title)
    # The instance variable "@title" being set to the local variable "title"
    @title = title
  end

  def title
    @title
  end
end

# create a new Class that inherits using the "<" symbol from the Movie Class
# It inherits all of the methods from the parents and can also have methods added to it
# You can override methods of a parent in a child class
class ScaryMovie < Movie
  def genre
    "scary"
  end
end

class FishComedy < Movie
  def genre
    "fish comedy"
  end
end

  jason = ScaryMovie.new("Friday the 13th")

  puts jason.title


class Person

  def initialize (name, genres_enjoyed)
    @name = name.upcase
    @genres_enjoyed = genres_enjoyed
  end

  def name
    @name
  end

  def genres_enjoyed
    @genres_enjoyed
  end

  # The parameter passed to watch could be called anything.  We call it "movie" so that we know it's being paassed an instance of the class Movie and all of the methods associated with it i.e. .title
  def watch(movie)
    if self.genres_enjoyed.member?(movie.genre)
      puts "#{self.name} is watching #{movie.title}"
    else
      puts "I am not watching #{movie.title}"
    end
  end

# Create new instances of the Movie class and pass in the required parameter(title)
snakes_on_plane = Movie.new("Snakes on a Plane")
a = Movie.new("Gone with the Wind")

puts snakes_on_plane.title
puts a.title

jeff = Person.new("Jeff", ["fish comedy"])
jeff.name

jeff.watch(snakes_on_plane)

end