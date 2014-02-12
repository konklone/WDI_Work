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

pj.learn #Prints "I'm an instance method"/ Object 
pj.hello #"I'm an instance method"/ Object 
pj.hello_again #"I'm an instance method"/ Object 

Person.learn #I'm a class method 
Person.hello #undefined method 
Person.hello_again #undefined method 


