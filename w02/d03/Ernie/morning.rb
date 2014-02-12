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

.map {|x| x + "s" }
sort
sort.reverse
random_animals.each {|a| puts a.to_s.reverse}
sort_by { |x| x.length }
sort_by { |animal| animal.split("").last }
sort_by { |x| x[-1]  }
