class TicTacToe
  attr_reader :all_rows, :current_color

  def initialize
    @current_color = "black"
    @move_counter = 0

    @row0 = [nil, nil, nil]
    @row1 = [nil, nil, nil]
    @row2 = [nil, nil, nil]
    @all_rows = [@row0, @row1, @row2]
  end

  def all_columns
    @all_columns = @row0.zip(@row1, @row2)
  end

  def make_move(row_num, column_num)
    puts "Error: spot already taken!" unless @all_rows[row_num][column_num].nil?
    @all_rows[row_num][column_num] ||= set_current_color
      
    if check_winner
      puts "#{@current_color} wins!"
    elsif check_tie
      puts "A tie!"
    else
      @move_counter += 1
    end
  end

  private

  def set_current_color
    @current_color = @current_color == "red" ? "black" : "red"
  end

  def entire_row_current_color?(array)
    array.all? { |c| c == @current_color }
  end

  def diagonal_combo?
    diags = [[@row0[0], @row1[1], @row2[2]], [@row0[2], @row1[1], @row2[0]]]
  
    diags.any? do |diag|
      diag.all? { |coordinate| coordinate == @current_color }
    end
  end

  def check_winner
    all_columns
    (0..2).any? do |i|
      entire_row_current_color?([@all_rows[i][0], @all_rows[i][1], @all_rows[i][2]]) || entire_row_current_color?([@all_columns[i][0], @all_columns[i][1], @all_columns[i][2]]) || diagonal_combo?
    end
  end

  def check_tie
    @all_rows.flatten.all? { |coordinate| coordinate != nil }
  end
end

game = TicTacToe.new

p game.all_rows