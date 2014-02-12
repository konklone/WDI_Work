#Notes on Modules

require_relative 'new_modules'

class Car 
    include Borrowable 

    def initialize(make)
      @make = make 
    end 

    def make 
      @make  
    end 

    def say 
      "Hello I am a #{self.make}."
    end 
  
end 

class Computer 
    include Borrowable 

    def initialize(make) 
      @make = make 
    end 

    def boot 
      "This #{self.make} computer is booting up!"
    end 

    def make 
      @make 
    end 

end 

class Laptop < Computer 
  def close 
  end 
end

#This class would include the following instance methods: boot, make, borrow, can_borrow?, give_back 
# To test if apple responds to a method call --> apple.respond_to? :borrow 
#Respond to: 1) Implemented by class 2) Implemented by parents 3) Included in module 4) Included by parents 

#Classes vs Modules 
#Objects are a combination of DATA and BEHAVIOR 
        #data = set of all instance variables 
        #computer --> know make, if borrowed, and by whom? 
        #Math is a MODULE 

honda = Car.new("Honda")
puts honda.say  

puts honda.borrow("Britt")
puts honda.can_borrow? 

apple = Computer.new("Apple")
puts apple.boot 

#puts apple.borrowed_by("Peter")

apple.borrow("Russel")
puts apple.can_borrow? 
puts apple.give_back
puts apple.can_borrow? 


