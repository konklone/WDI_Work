class Game
	def initialize
		@board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
		@counter = 1
		@player = "X"
		@win = false
	end

	def move (x, y)
		if (x > 2 || x < 0) || (y > 2 || y < 0)
			puts "try again cheater"
			return
		end
		if @board[x][y] = nil
			@board[x][y] = @player
		else
			puts "Choose a different square."
		end

		# if @player == "X"
		# 	@board[x][y] = "X"
		# else
		# 	@board[x][y] = "O"
		# end

		@player = ((@counter % 2 ==)? 'X' : "O")
		@counter += 1
		return self
	end

	def check_win
		check_row
		check_column
		check_diagonal
		if @win == true
			puts "Game over son!"
		end
	end

	def check_row
		@baord.each do |i|
			# if i[0] == i[1] && i[0] == i[2] 
			# 	@win = true
			# end
			@win = true if (i[0] == i[1]) && (i[0] == i[2]) && (i[0].nil?)
	end

	def check_column
		(0..2).each do |i|
			# if @board[i][0] == @board[i][1] && @board[i][0] == @board[i][2] && (i[0].nil?)
			# 	@win = true
			# end
			@win = true if @board[i][0] == @board[i][1] && @board[i][0] == @board[i][2] && (i[0].nil?)
	end

	def check_diagonal
		# if @board[0][0] == @board[1][1] && @board[0][0] == @board[2][2]
		# 	@win = true
		# elsif @board[2][0] == @board[1][1] && @board[2][0] == @board[0][2]
		# 	@win = true
		# end
		@win = true if @board[0][0] == @board[1][1] && @board[0][0] == @board[2][2]
		@win = true if @board[2][0] == @board[1][1] && @board[2][2] == @board[0][2]
	end

end

