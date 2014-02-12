class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  def initialize(name, rent, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = rent
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def list_renters
    @renters.join("\n")
  end

  def to_s
    "#{@name} has #{@sqft} sqft and #{@renters.count} renters."
  end
end
