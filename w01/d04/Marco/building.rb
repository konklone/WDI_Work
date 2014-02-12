
class Building
  attr_accessor = :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}#(a hash where the keys are the names of the apartments)
  end

  def to_s
    "#{address}, #{style}, #{has_doorman}, #{is_walkup}, #{num_floors}, #{apartments}"
  end

end

#list_apartments = returns all apartments

#create a new building