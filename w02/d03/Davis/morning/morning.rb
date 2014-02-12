require 'pry'

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

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each { |animal| puts animal + "s" }
random_animals.sort
random_animals.sort.reverse # random_animals.sort {|x,y| y <=> x}
random_animals.sort_by { |animal| animal.length }
random_animals.sort_by { |animal| animal.reverse }
random_animals.sort_by { |animal| animal[-1] }
