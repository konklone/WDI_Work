require 'pry'

class LifeBoardArray < Array

  def [](index)
    if index<=3
      super(index)
    elsif index > 3
      super(index%4)
    else
      raise IndexError
    end
  end

  def []=(index,obj)
    if index<=3
      super(index,obj)
    elsif index > 3
      super(index%4, obj)
    else
      raise IndexError
    end
  end

end


board = LifeBoardArray.new

binding.pry

#board[3] should equal board[0]

