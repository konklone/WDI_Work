# class Apartment

#   attr_accessor :apt_name, :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters



#   def initialize(apt_name, price, is_occupied, sqft, num_beds, num_baths)
#     @apt_name = apt_name
#     @price = price
#     @is_occupied = is_occupied
#     @sqft = sqft
#     @num_beds = num_beds
#     @num_baths = num_baths
#     @renters = []
#   end

#   def to_s
#     "You have successfully created the apartment #{apt_name} with price: #{@price}, it is #{@is_occupied} occupied, sqft: #{@sqft}, number of bed: #{@num_beds}, number of baths: #{@num_baths}"
#   end
# end

class Apartment

  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize
    @price
    @is_occupied
    @sqft
    @num_beds
    @num_baths
    @renters
  end

  def to_s
    "You have successfully created the apartment with price: #{@price}, it is #{@is_occupied} occupied, sqft: #{@sqft}, number of bed: #{@num_beds}, number of baths: #{@num_baths}"
  end
end




    