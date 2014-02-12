require 'pry'

class Tictactoe
   def initialize ()
    @player = 1
    @board = [ [0, 0, 0],[0, 0, 0], [0, 0, 0] ]
    @count = 1
   end

   def move(num1, num2)
    if @board[x][y] = 0
      {
    switch_player
    count += 1
      }
   end

   def switch_player
    @player = -@player
   end

   def wins(player)
    if @board [ 2, 0], @board[1, 1], @board[0, 2] ==
   end
  end 

   def (row, col)
    if @counter %2 == 0
    marker = "x"
    else marker = "o"
   end
 end

binding.pry
