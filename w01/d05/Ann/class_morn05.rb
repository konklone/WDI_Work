#jeff.watch(snakes_on_plane)
#=> "You are watching Snakes on a Plane."

class Movie 
    def initialize(title)
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
      if self.enjoyed_member?(movie.genre)
        #array has instance method called member to see if array contains a 
        puts "#{self.name} is watching #{movie.title}"
      else 
        puts "I don't like that"
      #self and movie are the way we refer to the instance when we're actually INSIDE the class instance.  
    end 
end 

 

#snakes_on_plane = Movie.new("Snakes on a Plane")
#james_bond = Movie.new("James Bond")
#Both of these return an INSTANCE of the MOVIE class. 

#puts snakes_on_plane.title   
#puts james_bond.title 

#jeff = Person.new("jeff")
#This is returning an INSTANCE of the person class. 

#jeff.watch(snakes_on_plane)

#def get_keys(hash)
#hsh.keys 
#hash is being passed as an argument 

class ScaryMovie < Movie 
  def genre 
    "scary"
  end 

  #def title 
   # "Don't watch anything scary! Especially - #{super}"
    #child class can override parent methods  
  #end 

  def boo! 
    puts "scary"
  end 
end 

class FishComedy < Movie 
  def genre
    "fish comedy"
  end 
end 

jason = ScaryMovie.new("Friday the 13th")
nemo = FishComedy.new("Finding Nemo")

jeff = Person.new("Jeff", ["fish comedy"])
#puts jason.title 
#puts jason.genre 



end 
