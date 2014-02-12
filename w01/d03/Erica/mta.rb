# require 'pry'

n_line = ["times square", "34th", "28th-n", "23rd-n", "union square", "8th"]
l_line = ["8th ave", "6th Ave", "union square", "3rd Ave", "1st Ave"]
six_line = ["grand central", "33rd", "28th-s", "23rd-s", "union square", "astor place"]


class Train_Line
  attr_accessor :stop_on, :stop_off

  def initialize(x_input)
    @line = x_input 
  end

  # initialize based on the needs of the methods

  # a method that lists all the stops on a particular train line
def list_stops
  @line.each do  |x|
    puts x
  end
  end

  def get_stop_on
    @stop_on = gets.chomp
  end

  def get_stop_off
    @stop_off = gets.chomp
  end
  
  def print_distance
    @line.index(@stop_off) - @line.index(@stop_on)
  end

  def to_s
    @line.join(" , ")
  end  
end

 n_line = Train_Line.new(n_line)
puts n_line.to_s
#binding.pry 
n_line.stop_on = "times square"
n_line.stop_off = "8th"
n_line.print_distance
puts n_line.print_distance
