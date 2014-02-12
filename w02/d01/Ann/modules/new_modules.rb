  module Borrowable 

    def borrow(name)
      @borrowed_by = name 
      @borrowed = true 
      puts "Congrats! You have burrowed #{self.make}."
    end 

    def can_borrow?
      !@borrowed
    end 

    def give_back 
     @borrowed = false 
    end 

  end