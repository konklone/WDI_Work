class Apartment
  attr_accessor :renters, :is_occupied, :sqft, :num_beds, :num_baths

# initialize method
  def initialize(renters, is_occupied, sqft, num_beds, num_baths)
      @renters = renters
      @is_occupied = is_occupied
      @sqft = sqft
      @num_beds = num_beds
      @num_baths = num_baths
  end

  def to_s
    "This apartment #{@is_occupied}. It's #{@sqft} and has #{@num_beds} and #{@num_baths}."
  end 

  def list_renters
    "Here are all of the people who live in this building: #{@renters.join(", ")}"
  end

end

# a = Apartment.new("Bob", "is occupied", "700", "two beds", "2 baths")

# puts a.renters

