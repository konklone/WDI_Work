class Apartment
attr_accessor :renters, :price, :is_occupied, :sqft
	
def initialize(person, price, is_occupied, sqft)
	@renters = person
	@price = price
	@is_occupied = is_occupied
	@sqft = sqft
end

def to_s
	"#{person} has "
end