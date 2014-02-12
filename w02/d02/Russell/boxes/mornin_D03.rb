class Person

def initialize(name)
  @name = name
end

def self.learn
	#self here refers to the class, but wouldn't refer to the object
  puts "I'm a class method"
  puts self
end

def learn
  puts "I'm an instance method"
  puts self
  #here self refers the object and only to the object 
end

def hello
  self.learn
end

def hello_again
  learn
end

end

# Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
	# copy/paste the whole thing into pry
	# pj = Person.new("pj")
# * What happens when I call pj.learn
	# pry - pj.learn
	# => prints PJ
	# => prints "I'm an instance method"
	# => nil
# * What happens when I call pj.hello
	#pry - pj.hello
	# => "I'm an instance method"
	# => Pj
# * What happens when I call pj.hello_again
	#pry - pj.hello
	# => "I'm an instance method"
	# => Pj
	# pj.hello and pj.hello_again do exactly the same thing 

# Print the following to the console / see what it returns in pry
# * What happens when I call Person.learn
	#prints "I'm a class method"
	#prints Person
	#calls self.learn

# * What happens when I call Person.hello
	#method doesn't exit
# * What happens when I call Person.hello_again
	#method doesn't exist


# Check out the parts [here](https://thenewcircle.com/bookshelf/ruby_tutorial/scope.html) on self for enrichment.

# ## Arrays, sorting & blocks

# For the following array, how would I...

# ########################################## ARRAYS ####################################


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# ```
# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.join("s ").split
#or
random_animals.each do |i|
	puts i + "s"
end

# * Return an array of the animals sorted alphabetically
random_animals.sort 

# * Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse 

# * Return an array of the animals with each individual string reversed
randoms_animals.each{|a| a.reverse}

# * Return an array of the animals sorted by word length (low to high)
random_animals.sort_by{|x| x.length}

# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by {|animal| animal.split("").last}
# the | | represents the value of the block 






