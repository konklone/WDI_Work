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
pj.learn = "I'm an instance method"
#<Person:0x007f99b399c178> #puts self 
pj.hello = "I'm an instance method" #same thing 
#<Person:0x007f99b399c178> 
pj.hello_again = "I'm an instance method" #same thing
#<Person:0x007f99b399c178>

Person.learn = 
"I'm a class method"
"Person" 

Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.join("s ").split 
random_animals.each do |i|
  puts i + "s"
end

Return an array of the animals sorted alphabetically
random_animals.sort
Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse
random_animals.sort {|x,y| y<=>x}
Return an array of the animals sorted by word length (low to high)
random_animals.sort_by { |x| x.length }
random_animals.sort_by { |animal| x.split(" ").last }
# takes x
random_animals.sort_by { |animal| animal[-1]} #last thing is -1
random_animals.sort{ |x, y| x.reverse <=> y.reverse} #reverse 
random_animals.sort {|x, y| x[x.length-1] <=> y[y.length-1]} #reverse 

