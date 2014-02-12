class Game
  def initialize 
    @board = [[nil, nil, nil],[nil, nil, nil],[nil, nil, nil]]
    @counter = 0
    @player = "X"
    @win = false
  end


  def check_row
    @board.each do |i|
      if i[0] == i[1] && i[0] == i[2]
        @win = true
        puts "#{@player} won"
      else 
        nil
      end      

    end
  end

  def move(x, y)


  if @board[x][y].nil?
    if @player == "X"
       @board[x][y] = "X"
    else
       @board[x][y] = "circle"
    end
  else
    puts "You shall not pass!"
  end

    @player = ((@player == "X")? "circle" : "X")
    @counter += 1
  end


end



