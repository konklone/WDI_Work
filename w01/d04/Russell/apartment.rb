class Apartment
	attr_accessor[ :price, :is_occupied, :sqft, :num_baths, :num_beds, :renter ]
	def initialize ( price, is_occupied, sqft, num_baths, num_beds, renter)
		@price = price 
		@is_occupied = is_occupied
		@sqft = sqft
		@num_baths = num_baths
		@num_beds = num_beds
		@renter = [] 
	end

	def to_s
