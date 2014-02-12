require 'pry'

class Game

  def initialize
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @counter = 1
  end

  def move(r, c)
    if @counter % 2 == 0
      symbol = 'x'
    else
      symbol = 'o'
    end
    if @board[r][c].nil?
      @board[r][c] = symbol
      @counter += 1
    else
      puts "You're a fucking moron"
    end
    return self
  end

  def win?
    @board.each do |row|
      if !(row.include?(nil)) && row.uniq.length == 1
        @win = true
      end
    end

    i = 0
    while i < 3
      if !(@board.nil?) && @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        @win = true
      end
    end

    @win = true if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && !(@board[0][0].nil?)
    @win = true if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && !(@board[2][0].nil?)

  end


end

binding.pry