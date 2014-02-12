#remember to downcase each renter name before using
#extra: set default values to averages?

class Apartment
	attr_accessor :name, :price, :sqft, :num_beds, :num_baths, :renters
	attr_reader :is_occupied

	def initialize(name = nil, price = nil, sqft = nil, num_beds = nil, num_baths = nil, renters = nil)
		@name = name
		@price = price.to_i
		@sqft = sqft.to_i
		@num_beds = num_beds.to_i
		@num_baths = num_baths.to_i

		#arrays
		@renters = renters
		@is_occupied = @renters.nil? ? false : true
	end

	def to_s
		"#{@name}"
	end

	def list_renters
		result = @renters.map { |person| person.name }.join("\n")
	end
end