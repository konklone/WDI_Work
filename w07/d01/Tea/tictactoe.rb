require 'pry'

class TicTacToe

    def initialize
      @player = 1
      @board = [[1, 1, 1], [0, 0, 0],[ 0, 0, 0]]
      @count = 1
      @won = false
    end

    def player
      @player
    end

    def board
      @board
    end

    def count
      @count
    end

    def move(x, y)
      self.board[x][y] = self.player
      self.switch_player 
      self.wins?
    end

    def switch_player
      @player = -(@player)
    end

    def wins?(row, col)
      if @board[row].reduce(:+) == (@player * 3)
        return @player
      end
    end
end


game = TicTacToe.new
binding.pry
