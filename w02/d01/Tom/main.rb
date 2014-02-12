require './module'


class Car
  include Borrowable #include the instance methods from the file (module) borrow

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

class Computer
  include Borrowable #include the instance methods from the file (module) borrow

  def initialize(make)
    @make = make
  end

  def boot
    "This #{self.make} computer is booting up"
  end

    def make
      @make
  end
end


nums = [1, 2, 3]

new_array = []

nums.each do |num|
  new_array << num + 2
end


nums.each do |num|
  sum += num
end















honda = Car.new("Honda")
puts honda.say

puts honda.borrow("Britt")
puts honda.can_borrow?

puts honda.give_back
puts honda.can_borrow?

apple = Computer.new("Apple")
puts apple.boot



names = ["Tom", "Pete", "John"]
names.reduce do |string|
















