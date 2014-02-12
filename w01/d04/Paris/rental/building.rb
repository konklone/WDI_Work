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
    "This building is located at #{@address}. It's a lovely #{@style} building that #{@has_doorman}. It's #{@is_walkup}. It has #{@num_floors} and #{@apartments}."
  end

  def list_apartments
    "Here is a list of the apartments in this building:  #{@apartments.keys.join(", ")}."
  end

end

# b = Building.new("333", "modern", "has a doorman", "is a walk up", "has 3 floors")

# puts b.style