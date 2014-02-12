# snakes_on_a_plane = Movie.new("Snakes on a Plane")
# jeff = Person.new("Jeff")
# jeff.watch(snakes_on_a_plane)
#=> you are watching Snakes on a Plane"

marie = Person.new("Marie", "120 lbs", "female")
snakes_on_a_plane = Movie.new("Snakes oa Plane", "2 hours long", "comedy", "awesome-terrible")

class Movie # movie is an object
  def initialize(title)
    @title = title ## need an instance variable and a local variable so the info gets 'saved' and accessed elsewhere. 
  end

  def title
    @title #this prints the title.
  end

end

snakes_on_a_plane = Movie.new("Snakes on a Plane")

puts snakes_on_a_plane.title


# The above returns Snakes On a Plane
############################

class Person
  def initialize(name, genres_enjoyed)
    @name = name
    @genres_enjoyed = genres_enjoyed

  def name ## these are taken care of when you use attribute accessor (this would be used like marie.name)
    @name #this prints the title.
  end

  def watch(x) ## these are dummy variables, could be x. because you're calling this method on a movie. 
    if self.genres_enjoyed.member? (movie.genre) # to sort for Fish Comedies
    puts "#{self.name} is watching #{x.title}." #self.name instead of @name. x is the object. you're calling the title method defined in the movie class. self is a way of referencing the instance when you're inside the instance. 
      else "I don't like that"
    end
  end

  def genres_enjoyed
    @genres_enjoyed
  end

end

#jeff = Person.new("Jeff")

jeff.watch(snakes_on_a_plane)


# app pry, anchor with: binding.pry. this allows you to go inside the file. 

class ScaryMovie < Movie
  
  def genre
    "scary"
  efile
  end

class FishComedy < Movie

  def genre
    "fish comedy"
  end
end

nemo = FishComedy.new("Finding Nemo")
jason = ScaryMovie.new("Friday the 13th") # jason inherits title, etc. from the parent class Movie. the method genre is specific to ScaryMovie class. 
jeff = Person.new("Jeff", ["fish comedy"])

#CLASSES - PARENT/CHILD LECTURE
#when you've overridden a method in the super class with the child class, you can call the super class method with #{super}.

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







