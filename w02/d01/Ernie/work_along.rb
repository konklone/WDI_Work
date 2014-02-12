require_realative "module"

class Person 
  include Borrow
  
  def init (name)
    @name = name
  end
  
  def name
    @name
  end
  
  def say
    "Hello, my name is #{self.name}"
  end

end

ernie = Person.new("ernie")
puts ernie.say

class Computer
  include Borrow
  def initialize(make)
    @make = make
  end
  
  def make
    @make
  end
  def boot
    "This #{self.make} Computer is booting up!"
  end
end

apple = Computer.new("apple")
puts apple.boot



apple.borrow("Peter")