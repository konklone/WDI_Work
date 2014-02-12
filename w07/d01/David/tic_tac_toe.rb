require 'pry'

class Board

  attr_reader :board

  def initialize
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @counter = 0
    @win = false
  end

  def move(row, column)
    if @board[row][column].nil?
      @board[row][column] = count_move
      win_checker
      @counter +=1
    elsif row > 2 || row < 0 || column > 2 || column < 0
        "Please enter a number between 0 and 2"
    else
      "That space is taken, please try again"
    end

    return self
  end

  def count_move
    if @counter % 2 == 0
      return "X"
    else
      return "O"
    end
    #alternatively ((@counter % 2 == 0)? 'x' : 'o')
  end

  def check_win
    if @counter >= 5
      row_checker
      column_checker
      diag_checker
    end
  end

  def row_checker
    #CHECKING THE ROWS
    @board.each do |row|
      if row.uniq.count == 1 && !row[0].nil?
        return count_move + "WINS"
      end
    end
  end

  def column_checker
    column0 = @board.select do |row|
      row[0]
    end
    column1 = @board.select do |row|
      row[1]
    end
    column2 = @board.select do |row|
      row[2]
    end
    if column0.uniq.count == 1 || column0.uniq.count == 1 || column2.uniq.count == 1
      return count_move + "WINS"
    end
    while i < 3
      @win = true if @board[0][i] == @board[1][i] && @board[0][i] == @board[2][i] && (!board[0][i].nil?)
      i += 1
    end
  end

  def diag_checker
    @win = true if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && !@board[0][0].nil?
    @win = true if @board[2][2] == @board[1][1] && @board[1][1] == @board[0][2] && !@board[2][2].nil?
  end


  #### optimized solution
  def player
    @player = -(@player)
  end

  def check_win( row, col )
    #check rows
    @board[row].reduce(:+) == (@player*3)
  end


end


game = Board.new()
binding.pry