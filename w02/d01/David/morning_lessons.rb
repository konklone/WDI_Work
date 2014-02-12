require_relative 'module'
require 'pry'

class Car

  include Borrowable

  def initialize(make)
    @make = make
  end

  def make
    @make
  end

  def say
    "Hello I am a #{self.make}"
  end

end

class Computer

include Borrowable

def initialize(make)
  @make = make
end

def make
  @make
end

def boot
  "This #{self.make} computer is booting up!"
end

end


honda = Car.new("Honda")
puts honda.say

puts honda.can_borrow?
puts honda.borrow("David")

puts honda.give_back
puts honda.can_borrow?

apple = Computer.new("Apple")
binding.pry
puts apple.boot

puts apple.can_borrow?
puts apple.borrow("David")

puts apple.give_back
puts apple.can_borrow?

