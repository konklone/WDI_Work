require 'pry'

class TicTacToe

  def initialize
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @counter = 0 
    @win
  end

  def move(row, col)

    return "Britt thought of this scenario and you shall not pass" if !board[index_one][index_two].nil? 

    @board[row][col] = player
    player = "x"
    if @counter % 2 != 0
      player = "o"
    end

    @counter +=1
    # to show the picture of the board after each move, for PJ's implementation.
    return self
  end

  def check_win
    check_row
    check_col
    check_dia
    puts "Game over!' if @win"
  end

  def check_row
    @board.each do |i|
    @win = true if i[0] == i[1] && i[0] == i[2]
    puts "#{[marker]} wins!"
    end
  end

  def check_col
    i = 0
    while i < 3
      @win = true if @board[0][i] == @board[1][i] == @board[2][i] && (!@board[0][i].nil?)
      i += 1
    end
    puts "#{marker} wins!" if @win
  end

  def check_dia

  end

end

# index_one = index_one.to_i
# index_two = index_two.to_i



