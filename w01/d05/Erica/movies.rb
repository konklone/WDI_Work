class Movie

  def initialize(x)
    @title = x
  end 

  def title
  @title
  end
end

class Person
  def initialize(name, genres_enjoyed)
    @name = name
    @genres_enjoyed = genres_enjoyed
  end

def watch(x)
  puts = "Let's watch #{movie.title}"
end

  def name
  @name
  end
  # or attr_reader :name 
end

def genres_enjoyed
  @genres_enjoyed
end

class ScaryMovie < Movie
  def genre
    "scary"
  end

  def title
    "DON'T WATCH ANYTHING SCARY, especially - #{super}"
  end
end

class FishComedy < Movie
  def genre
    "fish comedy"
  end
end

movie1 = Movie.new("Snakes On A Plane") #before (,)
puts movie1.title 

nemo = FishComedy.new("Finding Nemo", )

jeff = Person.new("jeff!", "[fish comedy]")
jeff.watch(snakes_on_a_plane)
jeff.watch

tom = Person.new("tom")
tom.watch

jason = ScaryMovie.new("Friday the 13th")
#puts jason.title 
#=> Friday the 13t
# puts jason.genre 
# => scary

#ScaryMovie inherits from Movie because of the <
# inherited classes can overwrite their parents' methods



