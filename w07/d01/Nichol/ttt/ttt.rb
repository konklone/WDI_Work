require 'pry'


class TicTacToe

  def initialize()
    @player = 1
    @board = [[0,0,0],[0,0,0],[0,0,0]]
    @count = 1
    @won = false
  end

  def move(x,y)
      @board[x][y] = @player
      switchPlayer
      @count += 1
  end

  def wins(row, col)
    
    if @board[row].reduce(:+) == (@player * 3)
      @won = true
    if @board[col].reduce(:+) == (@player * 3)
      @won = true

    # if (@board[0][0] + @board[0][1] + @board[0][2]) == 3
    #   @won = true

    # if (@board[1][0] + @board[1][1] + @board[1][2])  == 3
    #   @won = true

    # if (@board[2][0] + @board[2][1] + @board[2][2]) == 3  
    #   @won = true



  end

  def switchPlayer
    @player = -@player
  end

  def player
    @player
  end


end



game = TicTacToe.new

binding.pry
