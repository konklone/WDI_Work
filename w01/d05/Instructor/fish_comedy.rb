class Person
  def initialize(name, genres_enjoyed)
    @name = name
    @genres_enjoyed = genres_enjoyed
  end

  def name
    return @name
  end

  def genres_enjoyed
    @genres_enjoyed
  end

  def watch(movie)
    if self.genres_enjoyed.member?(movie.genre)
      puts "#{self.name} is watching #{movie.title}"
    else
      puts "I don't like that!"
    end
  end
end

class Movie
  def initialize(title)
    @title = title
  end

  def title
    @title
  end
end

class ScaryMovie < Movie
  def genre
    "scary"
  end

  def boo!
    puts "SCARYYYYY!"
  end
end

class FishComedy < Movie
  def genre
    "fish comedy"
  end
end

snakes_on_plane = Movie.new("Snakes on a Plane")
jason = ScaryMovie.new("Friday the 13th")
nemo = FishComedy.new("Finding Nemo")

jeff = Person.new("Jeff", ["fish comedy"])

jeff.genres_enjoyed

jeff.watch(nemo)
#=> "Jeff is watching Finding Nemo"

jeff.watch(jason)
#=> "I don't like that!"

jeff.watch(snakes_on_plane)
#=> NoMethodError: undefined method `genre' for #<Movie>
# IE - no genre instance method has been defined on the parent `Movie` class!
