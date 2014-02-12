module Borrowable

  def can_borrow?
    #@borrowed_by.nil? #if you can borrow it that will be nil
    !@borrowed
  end

  def borrow(name)
    @borrowed_by = name
    @borrowed = true
    "Congrats you have borrowed #{self.make}"
  end

  def give_back
    @borrowed = false
  end
end  