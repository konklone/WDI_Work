class Building
  attr_accessor :apartments, :address, :style, :has_doorman, :is_walkup, :num_floors

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
  end

  def list_apartments
    @apartments.values.join("\n")
  end

  def to_s
    "This building has #{@apartments.count} apartments."
  end
end
