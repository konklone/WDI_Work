require 'pry'
class Game

  def initialize

    @board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
    @counter = 1
  end

  def getInput
  while @counter < 10
  puts "Pick a move"
  print " X >"
  user_x = gets.chomp.to_i
    if user_x > 2
      print " X >"
      user_x = gets.chomp.to_i
    end
  print " Y >"
  user_y = gets.chomp.to_i
    if user_y > 2
      print " Y >"
      user_y = gets.chomp.to_i
    end

  move(user_x,user_y)
  
  end
  end

  def move(x,y)
  # @board[x][y] = (@counter % 2 == 0)? 'x' : 'o'
    # will evaluate the conditional, if true, x, else, o 
    
    if @board[x][y].nil?
      puts "hello"
      if (@counter % 2 == 0)
        @board[x][y] = "X"
      else
        @board[x][y] = "O"
      end
      binding.pry
      @counter+=1;
      getInput

    else
      puts "You can't play there"
      getInput
    end
  
  end

end

new_game = Game.new
new_game.getInput

# i = 0
# while i < 10
#   puts "Pick a move"
#   print " X >"
#   user_x = gets.chomp.to_i
#     if user_x > 2
#       print " X >"
#       user_x = gets.chomp.to_i
#     end
#   print " Y >"
#   user_y = gets.chomp.to_i
#     if user_y > 2
#       print " Y >"
#       user_y = gets.chomp.to_i
#     end

#   new_game.move(user_x,user_y)
#   i+=1
# end