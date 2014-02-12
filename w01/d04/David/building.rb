# class Building
#   attr_accessor :building_name, :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments 
#   #(apartments is a hash where the keys are the names of the apartments)

#   def initialize(building_name, address, style, has_doorman, is_walkup, num_floors)
#     @building_name = building_name
#     @address = address
#     @style = style
#     @has_doorman = has_doorman
#     @is_walkup = is_walkup
#     @num_floors = num_floors
#     @apartments = Hash.new
#   end

#   def to_s
#     "You have successfully created the new building: #{@building_name}, Address: #{@address}, Style: #{style}, Doorman: #{has_doorman}, Walk-Up: #{is_walkup}, Number of Floors: #{num_floors}"
#   end

# end


class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments 
  #(apartments is a hash where the keys are the names of the apartments)

  def initialize
    @address
    @style
    @has_doorman
    @is_walkup 
    @num_floors
    @apartments = Hash.new
  end

  def to_s
    "You have successfully created the new building Address: #{@address}, Style: #{@style}, Doorman: #{@has_doorman}, Walk-Up: #{@is_walkup}, Number of Floors: #{@num_floors}, Apartments: #{@apartments}"
  end

end




