require 'pry'
class Board


  def initialize 
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @counter = 0
  end

  def move(row, column)
    @board[row][column] = count_move
    win_checker
    @counter += 1
  end

  def count_move
    if @counter % 2 == 0 
      return "X"
    else
      return "0"
    end
  end

  def check_win
    check_row
    check_col
    check_dia
    puts "Game Over" if @win

end

  def check_row
      @board.each do |i|
        @win = true if [i][0] == [i][1] && [i][0] == [i][2]
      end
      puts "{#@marker} wins!" if @win
  end

   def check_col
      i = 0
      while i < 3
        @win = true if @board[0][i] == @board[1][i] && @board[0][i] == @board[2][i] && (!@board[0][i].nil?)
      i += 1
      end
      puts "{#@marker} wins!" if @win
  end

  def check_dia
    @win = true if @board[0][0] == @board[1][1]  && @board[1][1] == @board [2][2] && (!board  )
  end


end


game = Board.new()
binding.pry