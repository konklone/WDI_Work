class Building
  
  attr_accessor :address, :style :has_doorman :is_walkup :num_floors :apartments

  def initialize
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = apartments
  end

  def list_apartments
    #lists all apartments from apartment class
  end

  def to_string(object)
    object.to_string
  end

end