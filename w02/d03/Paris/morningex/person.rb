class Person

def initialize(name)
  @name = name
end

def self.learn
  puts "I'm a class method"
  puts self
end

def learn
  puts "I'm an instance method"  
  puts self
end

def hello  #this is the same thing as hello_again. we right self for clarity. 
  self.learn
end

def hello_again
  learn
end

end

pj = Person.new

```

Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
* What happens when I call pj.learn
* What happens when I call pj.hello
* What happens when I call pj.hello_again

Print the following to the console / see what it returns in pry
* What happens when I call Person.learn
* What happens when I call Person.hello
* What happens when I call Person.hello_again


Check out the parts [here](https://thenewcircle.com/bookshelf/ruby_tutorial/scope.html) on self for enrichment.

## Arrays, sorting & blocks

For the following array, how would I...

```
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

random_animals.map do |x| x + "s"
 end 

# * Return an array of the animals sorted alphabetically
random_animals.sort

# * Return an array of the animals sorted reverse alphabetically

random_animals.sort.reverse

# * Return an array of the animals with each individual string reversed
random_animals.map do |x| x.reverse
end

# * Return an array of the animals sorted by word length (low to high)

random_animals.sort_by {|x| x.length}


# Return an array of the animals sorted alphabetically by the last character in the string

random_animals.sort_by {|x| x.split("").last}









