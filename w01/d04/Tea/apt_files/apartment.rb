require_relative 'person'

class Apartment
  
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths)
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    #creates new array that will list all renters
    @renters = []
  end
   # push tenant to renters.
  def add_tenant(tenant)
    @renters.push(tenant)
  end

  def list_renters
    puts "#{@renters.join(" | ")}"
  end

  def to_s
    "This apartment costs #{@price}.\nIt is #{@sqft} square feet with #{@num_beds} beds and #{@num_baths} baths.
    Your fellow tenants are #{list_renters}"
  end

end



  













