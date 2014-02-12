#FUNCTION TO CREATE APARTMENT INSTANCE
class Apartment 
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
  
  def initialize(price, is_occupied, sqft, num_beds, num_baths, names)
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @name = name
    @renters = []
  end

  def to_s
    puts "#{price}, #{is_occupied}, #{sqft}, #{num_beds}, #{num_baths}"
  end
end