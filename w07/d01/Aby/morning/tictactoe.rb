class Game

	def initialize 
		@board = [[nil, nil,nil], [nil, nil, nil], [nil, nil, nil]]
		@counter = 0
		@win
	end

	def move(x,y)

		if @counter % 2 == 0 
			marker = 'x'
		else 
			marker = 'o'
		end

		if @board[x][y].nil?
			@board[x][y] = marker
			@counter += 1 
		else
			puts "Can't do that, bro."

	end

	def check_win()
		check_row
		check_col
		check_diag
		puts 'Game over!' if @win
	end

	def check_row
		@board.each do |i|
			@win = true if i[0] == i[1] && i[0] == i[2] && (!i[0].nil?)
		end
		puts "#{@marker} wins!" if @win
	end

	def check_col
		(0..2).each do
			@win = true if @board[0][i] == @board[1][i] && @board[0][i] == @board[2][i] && (!@board[0][i].nil?)
			i += 1
		end
		puts "#{@marker} wins!" if @win
	end

	def check_dia
		@win = true if @board[0][0] = @board[1][1] && @board[1][1] = @board[2][2] && (!board[1][1].nil?)
		@win = true if @board[0][0] = @board[1][1] && @board[1][1] = @board[2][2] && (!board[1][1].nil?)





	