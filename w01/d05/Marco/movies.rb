class Person
  def initialize(name, genres_enjoyed)
    @name = name
    @genres_enjoyed = genres_enjoyed
    @list_person
  end

  def name
    return @name
  end

  #method added by Marco
  def list_person
    @list_person
    puts "#{name} enjoys #{genres_enjoyed}."
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

puts Movie.title()

#jeff.watch(snakes_on_plane)
#=> NoMethodError: undefined method `genre' for #<Movie>
# IE - no genre instance method has been defined on the parent `Movie` class!



##################################

# # snakes_on_a_plane = Movie.new("Snakes on a Plane")
# #jeff = Person.new("Jeff")
# #jeff.watch(snakes_on_a_plane)
# #=> "You are watching 'Snakes on a Plane'"

# class Movie
#   def initialize(title)
#     @title = title
#   end

#   def title #this can be repalced by attr_accessor
#     #"You are watching '#{@title}.'"
#     @title
#   end

# end



# class Person 
#   def initialize(name, genres_enjoyed) 
#     @name = name
#     @genres_enjoyed = genres_enjoyed
#   end

#   def name #this can be repalced by attr_accessor
#     @name
#   end

#   def genres_enjoyed
#       @genres_enjoyed
#   end

#   def watch (movie) #this can be repalced by attr_accessor
#     @watch
#     if self.genres_enjoyed.member?(movie.genre)
#     puts "#{name} is watching '#{movie.title}.'"
#   end

# end


# class ScaryMovie < Movie
#   def genre
#       "scary"
#   end

#   # def title 
#   #   "DON'T WATCH SCARY MOVIES, ESPECIALLY #{super}" #super allows title to be printed from parent 
#   # end
# end

# class FishComedy < Movie

#   def genre
#     "fish comedy"
#   end
# end

# snakes_on_a_plane = Movie.new("Snakes on a Plane")

# puts snakes_on_a_plane.title

# jeff = Person.new("Jeff")

# puts jeff.name

# jeff.watch(snakes_on_a_plane)

# jason = ScaryMovie.new("Friday the 13th")

# puts jason.title
# puts jason.genre

# jeff.watch(jason)