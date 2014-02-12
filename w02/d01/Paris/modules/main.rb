require_relative './module.rb'

class Person

  def initialize(name)
    @name = name
  end

  def say
    "hello, my name is #{@self.name}"
  end

  def name
    @name
  end


end


class Car
  include Borrowable

  def initialize(make)
    @make = make
  end

  def say
    "hello, my name is #{@self.make}"
  end

  def make
    @make
  end

end

class Laptop < Computer #inherits from module and inherits from computer. everything in laptop that's specific does not get inherited by computer.

  def do
    @do
  end
end


class Computer
  include Borrowable

  def initialize(make)
    @make = make
  end

  def boot
    "hello, my name is #{@self.make}"
  end

  def make
    @make
  end

end

honda = Car.new("Honda")

puts honda.make

  puts honda.borrow("Britt")
puts honda.say

  puts honda.give_back
  putshonda.can_borrow?



apple = Computer.new("Apple")

puts apple.boot



jeff = Person.new("Jeff")

puts jeff.say


#in pry:

# apple.respond_to? :make

# will return true or will return false

######USE OF MODULE #1

#Responds to (in this order):

# 1. implemented on by class #methods in its own class

# 2. implented by parents #methods in its parent 

# 3. included in module #in a separate module file with shared behavior with ther classes

# 4. included by parents #included in parent modules


######USE OF MODULE #2

#Math.sqrt(9) #Math is a module. 

#need behavior without data. Math is a module. 


# What's unique about is a class is that we instantiate classes, it's a general idea that we manifest into particular representations. class Person, instance Person Jeff, jeff has a name, jeff has hopes and dreams.

#Computer tracked 3 pieces of data: make, borrowed, borrowed_by, name, etc.









