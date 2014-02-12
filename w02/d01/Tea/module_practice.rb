require_relative 'module'

class Car
  include Borrowable
  def initialize(make)
    @make = make
    end

  def make
    @make
  end

  def say
      "Hello, I am a #{self.make}"
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

apple = Computer.new("Apple")
puts apple.boot
honda = Car.new("Honda")
puts honda.say
