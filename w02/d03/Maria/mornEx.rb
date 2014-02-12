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
  puts "I'm an instance method"#Here we are defining 
  #for the instance.
  puts self
end

def hello
  self.learn #will refer to the current oject 
  #here we are defining for the class
end

def hello_again #does exatly what hello does
  learn
end

end

pj = Person.new("PJ")

pj.learn
pj.hello
pj.hello_again

Person.learn #refers to entire class not just pj
Person.hello
Person.hello_again









