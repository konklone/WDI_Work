	a = ["Peter", "PJ", "Jeff"]

1. How would you return the string "Peter"?
puts a[0]

2. How would you add your name to the array?
a << "maria" or a.push("maria")

3. How would you remove "PJ" from the array
a.delete("PJ") this will give us bak what we just 
deleted so we can put it in a variable.
puts a{"0"}

*B. Given the following data structure:**

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

1. How would you return the string "One"?
h[1]

2. How would you return the string "Two"?
h[:two]

3. How would you return the number 2?
h["two"]

4. How would you add {3 => "Three"} to the hash?
h[3] = "three"
5. How would you add {:four => 4} to the hash?
h[:four] = 4

6. How would you remove {1 => "One"} from the hash?
h.delete(1)

class Wizard
	attr_accessor :name, :spells
# when we creat a wiz he wont have any spells


def initialize(name) #parameter
	@name = name #instance variable gotten from the parameters
	@spells = []
end

def to_s
	"Your wizard's name is #{name} and your spells are #{@spells.join(", ")}"
end

end

harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos")  
puts harry #puts Harry Potter aand his spells from to_s
puts harry.spells #puts only the spells

############### END MORNING BEGIN LECTURE ###############

We have a Person
that has movies
and person watcher

#snakes_in_plane = Movies.new("Jeff")
#jeff = Person.new("Jeff")
#jeff.watch(snkes on a plane)
#=> "you are watching snakes on a plane"

class Movie
	def initialize(title)
		@title = title #<=local varabl
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
		return @name
	end

	def genres_enjoyed
		@genres_enjoyed
	end

	def watch(movie)
		if self.genres_enjoyed.member?(movie.genres)
	 	puts "#{self.name} is watching #{movie.title}"
	 	else
	 	puts "I dont like that!"	
	end

	def boo!

	end
end
# Here we discuss inheritance
 class FishComedy < Movie
 	
 	def genres
 		"fish comedy"
 	end
 end

class ScaryMovie < Movie
	def genre
		"scary"
	end	
end

jeff = Person.new("Jeff", ["fish comedy"])
jason = ScaryMovie.new("Friday the 13th")
snakes_on_plane = Movie.new("snakes on a plane")
puts jason.title


jeff = Person.new("jeff")
snakes_on_plane.title
jeff.watch(snakes_on_plane)



we are dropping the Movie object inside the watch def

# Side note as we try to understand.....
[
b = {a="A", b = "B"} # thisis a hash
def getPkeys(hsh)#called hash
	hsh.keys #keys methos called on the parameter
end
get_keys(b)
]
__________________
shelter has animals(live in shelter) and clients(also have pets)
I will be adding shelters animal to clients animals.

__________________

ast login: Fri Sep 27 15:25:40 on ttys000
ॐ  ~  pry
[1] pry(main)> class Bin
[1] pry(main)*   def initialize
[1] pry(main)*     @container = []
[1] pry(main)*   end  
[1] pry(main)*   def container
[1] pry(main)*     @container
[1] pry(main)*   end  
[1] pry(main)* end  
=> nil
[2] pry(main)> my_bin = Bin.new
=> #<Bin:0x007faf110f59e8 @container=[]>
[3] pry(main)> my_bin.container
=> []
[4] pry(main)> my_bin.container.push "stuff"
=> ["stuff"]
[5] pry(main)> my_bin.container
=> ["stuff"]
[6] pry(main)> [1,2,3].join
=> "123"
[7] pry(main)> [1,2,3].join.push :AS
NoMethodError: undefined method `push' for "123":String
from (pry):14:in `__pry__'
[8] pry(main)> class Widget
[8] pry(main)* end  
=> nil
[9] pry(main)> my_widget= Widget.new
=> #<Widget:0x007faf111bce58>
[10] pry(main)> my_b
NameError: undefined local variable or method `my_b' for main:Object
from (pry):18:in `__pry__'
[11] pry(main)> my_bin
=> #<Bin:0x007faf110f59e8 @container=["stuff"]>
[12] pry(main)> 


[12] pry(main)> my_bin
=> #<Bin:0x007faf110f59e8 @container=["stuff"]>
[13] pry(main)> my_widget
=> #<Widget:0x007faf111bce58>
[14] pry(main)> my_bin.container
=> ["stuff"]
[15] pry(main)> my_bin.container.push my_widget
=> ["stuff", #<Widget:0x007faf111bce58>]
[16] pry(main)> 
 __________________
 for using Pry require'pry'
 end with  Binding.pry










