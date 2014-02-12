class Movie
  
  def  initialize(title)
    @title = title
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

  def name
    @name
  end

  def genres_enjoyed
    @genres_enjoyed
  end


  def watch(movie)
    if self.genres_enjoyed.member?(movie.genre)  ### if this PERSON's enjoyed genres array includes   (self returns the instance of the class we're in)
        puts " #{self.name} is watching #{movie.title}"      ### "self" is the instance of the class we're in, in this case the instance of Person ####
      else
        puts "I don't like that!!!"        
    end
  end

end

class ScaryMovie < Movie ### create a new class, ScaryMovie, which inherits all methods from its parent class, Movie.... ####
  def genre
    "scary"
  end

  # def title 
  #   "DON'T WATCH ANYTHING SCARY, especially #{super} !!!" #### super uses the behaviour of the method .title BEFORE it was overwritten####
  # end

end

class FishComedy < Movie
  def genre
    "fish comedy"
  end
end




jason = ScaryMovie.new("Friday the 13th")  
### we're making a new instance of ScaryMovie. it is also going to be an instance of Movie ###
### We include a title because ScaryMovie class inherits the instance method .title from Movie class. ###
### And then we include a genre, because class ScaryMovie has instance method genre (which uses paramteter genre ) ###

nemo = FishComedy.new("Finding Nemo")

jeff = Person.new("Jeff", ["fish comedy"])
jeff.watch(nemo)
jeff.watch(jason)


# puts jason.title 


# snakes_on_plane = Movie.new("Snakes on a Plane")
# godfather = Movie.new("The Godfather")


# tom = Person.new("tom")
# jeff = Person.new("jeff")

# tom.watch(godfather)
# jeff.watch(snakes_on_plane)
