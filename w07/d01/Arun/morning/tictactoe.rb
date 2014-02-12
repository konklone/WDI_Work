require 'pry'
class Board

	def initialize
		@board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
		@counter = 0
	end

	def move (row, column)
		@board[row][column] = count_move
		@counter += 1
	end

	def count_move
		if @counter % 2 == 0
			return "X"
		else
			return "0"
		end
	end

	def same?
		self.unique.length == 1
	end

	def win_checker
		if @counter >= 5
		if row.unique.size == 1
			return count_move + "wins"
		end
		end
	end

	def check_row
		@board.each do |i|
			@win = true if i[0] == i[1] && i[0] == i[2] && !i[0].nil?
		end
		puts "#{@marker} wins!" if @win
	end

	def check_col
		i = 0
		 while i < 3
		 	@win = true if @board[0][i] == @board[1][i] && @board[0][i] == @board[2][i]
		 end
	end

	def check_diag

	end

end


game = Board.new

binding.pry