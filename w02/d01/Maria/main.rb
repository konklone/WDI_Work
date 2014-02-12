require_relative 'module'
class Car
  include Borrowable

  def initialize (make)
    @make = make 
  end

  def make 
    @make
  end

  def say
    "Hello my name is #{self.make}"
  end
end
#### below was inside the class Car also the class Computer but cut out to put into a moduel!!!

  # def can_borrow?
  #   #@borrowed_by.nil? #if you can borrow it that will be nil
  #   !@borrowed
  # end

  # def borrow(name)
  #   @borrowed_by = name
  #   @borrowed = true
  # end

  # def give_back
  #   @borrowed = false
  # end  


class Computer
  include Borrowable

  def initialize(make)
    @make = make
  end

  def boot
    "This #{self.make} computer is booting up."
  end

  def make
  @make
  end
end
#### below was inside the class Car also the class Computer but cut out to put into a moduel!!!

  # def can_borrow?
  #   #@borrowed_by.nil? #if you can borrow it that will be nil
  #   !@borrowed
  # end

  # def borrow(name)
  #   @borrowed_by = name
  #   @borrowed = true
  # end

  # def give_back
  #   @borrowed = false
  # end  
  #end
  class Laptop < computer #Whatever defs in here will not be implemented on the parent class 
  end

honda = Car.new("Honda")
puts honda.say
puts honda.borrow("britt")
puts honda.can_borrow?

apple = Computer.new("Apple")
puts apple.boot