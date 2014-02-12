require 'pry'

class TicTacToe
   def initialize
      @board = [[nil,nil,nil], [nil, nil,nil], [nil, nil,nil]]
      @counter = 0
   end

   def winner?
   end

   def move(row, column)
      @row = row.to_i
      @column = column.to_i

      if !@board[@row][@column].nil?
         return "Space taken!"
      else
         if @counter % 2 == 0
            player1 = "x"

            @board[@row][@column] = player1
            @counter += 1
         else
            player2 = "o"

            @board[@row][@column] = player2
            @counter += 1
         end
      end
      return self
   end
end

binding.pry