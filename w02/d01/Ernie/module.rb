module Borrow
  def can_borrow?
    !@Borrowed
  end

  def borrow(name)
    @borrowed_by = name
    @borrowed = true
  end

  def give_back
    @borrowed = false
  end

end