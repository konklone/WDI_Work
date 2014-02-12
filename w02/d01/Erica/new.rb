class Person
  def initialize(name)
  @name = name
  end

  def say
    "Hello, my name is #{self.name}"
  end

  def name
    @name
  end
end

jeff = Person.new("Jeff")
puts jeff.say

##

class Car
  def initialize(make)
    @make = make
  end

  def say
    "Hello, I am a #{self.make}"
  end

  def make
    @make
  end
end
 
honda = Car.new("Honda")
puts honda.say 

##

class Computer
  def initialize(model)
    @model = model
  end

  def boot
    "This #{self.make} computer is booting up!"
  end

  def make
    @make
  end

  def borrow(name)
    @borrowed_by = name
    @borrowed = true 
  end

  def can_borrow?
    @borrowed
  end

  def give_back
    @borrowed = false 
  end

honda = Car.new("Honda")
puts honda.say
puts honda.borrow("britt")
puts honda.can_borrow?


