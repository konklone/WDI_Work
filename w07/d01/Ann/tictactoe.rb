require 'pry'

class Game 

  def initialize 
    @board = [[nil, nil, nil],[nil, nil, nil], [nil, nil, nil]]
    @counter = 1
  end 

  def move(row, column) 
    if @counter % 2 == 0 
      symbol = "x"  
    else 
      symbol = "circle"
    end 

    if @board[row][column].nil?  
      @board[row][column] = symbol 
      @counter +=1 
    else 
      puts "You already tried that!"
    end

    return self 
  end  

  def check_win 
    i = 0 
    while i < 3 
      @win = true 
        if 
          @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i] 
        elsif 
          @board[0] || @board[1] || @board[2] == ["x", "x", "x"]
        elsif 
          @board[0] || @board[1] || @board[2] == ["circle", "circle", "circle"]
        elsif 
          @board[0][0] && @board[1][1] && @board[2][2] == ["x", "x", "x"] || ["circle", "circle", "circle"]
        elsif
          @board[0][2] || @board[1][1] || @board[0][0] == ["x", "x", "x"] || ["circle", "circle", "circle"]
        else 
          puts "It's a tie!"
        end 
      return "Game over!"
    end 

    def check_status

    end 

  end 
end 

tictactoe = Game.new 

binding.pry 

