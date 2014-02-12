#Morning Exercise

## All about self

Take a look at this class:

```ruby
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

def hello
  self.learn
end

def hello_again
  learn
end
pj
end
# ```

# Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
# * What happens when I call pj.learn
I'm an instance method
#<Person:0x007f985604aad8>

# * What happens when I call pj.hello
I'm an instance method
#<Person:0x007f985604aad8>

# * What happens when I call pj.hello_again
I'm an instance method
#<Person:0x007f985604aad8>




# Print the following to the console / see what it returns in pry
# * What happens when I call Person.learn
I'm a class method
Person

# * What happens when I call Person.hello
NoMethodError: undefined method `hello' for Person:Class
from (pry):25:in `__pry__'

# * What happens when I call Person.hello_again
NoMethodError: undefined method `hello_again' for Person:Class
from (pry):26:in `__pry__'



# Check out the parts [here](https://thenewcircle.com/bookshelf/ruby_tutorial/scope.html) on self for enrichment.

# ## Arrays, sorting & blocks

# For the following array, how would I...

# ```
# random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# ```
# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.each {|x| puts x + "s"}
# * Return an array of the animals sorted alphabetically
random_animals.sort
# * Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse
# * Return an array of the animals with each individual string reversed
random_animals.map { |x| } {|x| x.reverse }
# * Return an array of the animals sorted by word length (low to high)
random_animals.sort {|x, y| x.length <=> y.length}
# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort {|x, y| x[-1] <=> y[-1]}

