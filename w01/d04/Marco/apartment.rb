require './person'

class Apartment
  attr_accessor = :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)
    
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end

  def new_tenants(person)
    @renters.push(person)

  end

  def to_s
    
  end

end

list_profiles = @renters #should return all renters