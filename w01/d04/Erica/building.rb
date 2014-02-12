class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments_hash
  def initialize (address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments_hash = {}
  end





def list_apartments
end

end

building1 = Building.new(1,2,3,4,5)



