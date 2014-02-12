#FUNCTION TO CREATE BUILDING INSTANCE
class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  
  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
  end

  def to_s
    puts "Address: #{address} Style: #{style} Has doorman?: #{has_doorman} Is Walkup?: #{is_walkup} Numer of floors: #{num_floors}"
  end

end