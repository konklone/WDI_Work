class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize (price, is_occupied, sqft, num_beds, num_baths, renters)
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end

  def to_s
    "Apartment #{} costs $#{@price} and is occupied? #{@is_occupied}.  It's #{@sqft} square feet with #{@num_beds} bed rooms and #{@num_baths} bathrooms. it's rented by #{@renters}"
  end

  def list_renters

  end

end

puts apartment_3B = Apartment.new("100000", "Y", "1000", "3", "2", "#{ }")



