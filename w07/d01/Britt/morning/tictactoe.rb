require 'pry'

class TicTacToeGame
  attr_accessor :counter

  def initialize
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @counter = 0
    @win = false
    @player
  end

  def check_row
    @board.each do |i|
      return true if i[0] == i[1] && i[1] == i[2] && !i[0].nil?
    end
  end

  def check_column
    i = 0
    while i < 3
      @win = true if @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i] && !@board[0][i].nil?
      i += 1
    end
  end

  def check_diag
    @win = true if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && !@board[0][0].nil?
    @win = true if @board[2][0] == @board[1][1] && @board[1][1] == @board[2][2] && !@board[2][0].nil?
  end

  def winner?
   check_row
   check_column
   check_diag
   @win
  end

  def move(index_one, index_two)
    # check to make sure indices aren't already taken
    # add either "o" or "x" to a coordinate aka an index of the 2D array
    # check if winning combo exists
      # if it does, return "the game is over, #{whoever} won!"
    # else, continueeeeee
    return "funny guy, eh?" if (index_one > 2 || index_one < 0) || (index_two > 2 || index_two < 0)

    return "nice try sly guy" if !@board[index_one][index_two].nil?

    return "Tie game, sucaks." if @counter > 8

    @player = "x"

    @player = "o" if counter % 2 != 0

    index_one = index_one.to_i
    index_two = index_two.to_i

    @board[index_one][index_two] = @player

    return "GAME OVER. #{@player} WON." if self.winner?

    @counter += 1

    return self
  end

end

game = TicTacToeGame.new

binding.pry