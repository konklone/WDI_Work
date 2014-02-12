class Board
  def initialize
    @board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
    @counter = 1
  end

  def move( row, rol )
    if @counter % 2 == 0
      marker = 'x'
    else
      marker = 'o'
    end

    marker = 'x' if @counter % 2 == 0 ? 
    marker = ((@counter % 2 ==0)? 'x' : 'o')
end

