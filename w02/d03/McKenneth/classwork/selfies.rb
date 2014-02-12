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

pj.learn
pj.hello
pj.hello_again

# Person.learn
# Person.hello
# Person.hello_again

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.map{|x| puts (x + "s")}
puts
print random_animals.sort
puts
print random_animals.sort{ |x, y| y<=>x}
puts
random_animals.map{|x| print x.reverse + " " }
puts
print random_animals.sort{ |x,y| x.length <=> y.length}
#print random_animals.sort_by{|x| x.length}
puts
print random_animals.sort{ |x, y| x.reverse <=> y.reverse}
puts
print random_animals.sort_by{|animal| animal[-1]}