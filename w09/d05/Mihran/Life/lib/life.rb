require 'pry'
class Game
  def initialize
   @board = Board.new   
  end

  def board
    @board
  end
end


class Board
  def initialize
    @grid = [[],[],[],[]]
    for i in 0..3 do
      4.times {@grid[i].push(Cell.new)}
    end
  end

  def grid
    @grid
  end
end


class Cell

  def initialize
    @value = [true, false].sample
    @neighbors = []
  end

  def value
    @value
  end

  def neighbors
    @end
  end

end