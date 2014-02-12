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

end

pj = Person.new("PJ")

# * What happens when I call pj.learn
pj.learn
#prints "I'm an instance method and prints the enitre instance of Person"

# * What happens when I call pj.hello
pj.hello
#The same thing happens as about

# * What happens when I call pj.hello_again
pj.hello_again
#the same thing happens as above????
#self.learn and learn do the same thing, because if use a method inside a class inside another method in that class, "self" is implied

# Print the following to the console / see what it returns in pry
# * What happens when I call Person.learn
Person.learn
#outputs "I'm a class method"
#outputs "Person" on a second line -- this is the entire person class
#objects don't have access to a method defined on the class
#the "puts self" is evaluated when the method is called

# * What happens when I call Person.hello
#Person.hello
#NoMethodError: undefined method `hello' for Person:Class from (pry):22:in `__pry__'
#error because didn't put sel.hello for the definition of the method


# * What happens when I call Person.hello_again
#Person.hello_again
#NoMethodError: undefined method `hello_again' for Person:Class from (pry):25:in `__pry__'

#******************#

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.each {|x| puts x+"s"}

# * Return an array of the animals sorted alphabetically
random_animals.sort

# * Return an array of the animals sorted reverse alphabetically
random_animals.sort {|x,y| y<=>x}
#alternative method
random_animals.sort.reverse

# * Return an array of the animals with each individual string reversed
reversed_animals = Array.new
random_animals.each {|x| reversed_animals << x.reverse}
puts reversed_animals

#alternative method
random_animals.map {|x| x.reverse}

# * Return an array of the animals sorted by word length (low to high)
random_animals.sort_by {|x| x.length}
puts random_animals

# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by { |x| x.split("") .last}
#.split("") breaks every character of each string and puts them in an array

random_animals.sort_by {|animal| animal[-1]}
#in a stings "string"[0] refers to the first character
#"string"[-1] refers the last character


