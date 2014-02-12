require 'pry'

#snake_on_plane = Movie.new("Snakes on a Plane")
  # jeff = Person.new("Jeff")
  # jeff.watch(shankes_on_a_plane)
  # => "Your are watching Snakes on a Plane"

  class Movie

    def initialize(title)
      @title = title
    end

    #this is not needed if we use a attr_accessor
    def title
      @title
    end

    def genres_enjoyed
      @genres_enjoyed
    end

  end

  class Person

    def initialize(name, genres_enjoyed)
      @name = name
      @genres_enjoyed = genres_enjoyed
    end

    #this is not needed if we use a attr_accessor
    def name 
      @name
    end

    def genres_enjoyed
      @genres_enjoyed
    end

    #movie will be an instance object of the Movie class
    def watch(movie)
      if self.genres_enjoyed.member? (movie.genre)
        puts "I love #{movie.genre}!!!"
      else
        puts "I Don't Like #{movie.genre}!"
      end
      #puts "#{self.name} is watching #{movie.title}"
    end

  end

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

  # snakes_on_plane = Movie.new("Snakes on a Plane")
  # the_skin_i_live_in = Movie.new("The Skin I Live In")

  # puts snakes_on_plane.title

  # david = Person.new("David")
  # aki = Person.new("Aki")

  # david.watch(snakes_on_plane)
  # aki.watch(the_skin_i_live_in)

  

  # puts jason.title
  # puts jason.genre

  jason = ScaryMovie.new("Friday the 13th")
  nemo = FishComedy.new("Finding Nemo")

  jeff = Person.new("Jeff", ["fish comedy"])
  

  jeff.watch(nemo)
  jeff.watch(jason)


 

