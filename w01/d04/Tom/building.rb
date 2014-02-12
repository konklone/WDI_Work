class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize (address, style, has_doorman, is_walkup, num_floors, apartments)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = []
  end

  def to_s
     "Savoy Gardens is located at #{@address} constructed in a #{@style} style. It has a doorman? #{@has_doorman} is a Walkup? #{@is_walkup}.  It is #{@num_floors} stories high with #{@apartments} apartments"
  end

  def list_apartments

  end

end

puts savoy_garden = Building.new("#{@address}", "#{@style}", "#{@has_doorman}", "#{@is_walkup}", "#{@num_floors}", "#{@apartments}")



