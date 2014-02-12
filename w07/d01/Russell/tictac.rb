class Tictac

  def intialize
  
    @board = [[nil, nil, nil], [nil,nil,nil], [nil, nil,nil]]
    @counter = 1 
    @win
  end

  def move(x,y)

    if (counter % 2 == 0)
      @marker == "X"
    else 
      @marker == "O"
    end
  end
end

if @board[x][y].nil?
  @board[x][y] = marker
  @counter += 1
else
  puts "You shall not pass! (so to speak)"
end

return self
end



# new game = Tictac.new

# while counter <= 9
#   user_x = gets.chomp.to_i
#   puts "Make your move"
#   print "X >"
#   user_y = gets.chomp.to_i
#   puts "Make your move"
#   print "Y >"
#   new_game_move = tictac.move(user_x, user_y)
# end


def check_win
  check_row
  check_column
  check_diagonal

  if @win =  true
    puts "Game Over"
end

def check_row
  @board.each do |i|
  @win == true if i[0] == i[1] && i[0] == i[2]
  end
  puts "#{@marker} wins!"
end

def check_column
i = 0
while i < 3
@win = true if @board[0][i] == @board[1][i] && @board[0][i] == 
i += 1
end
# computer

