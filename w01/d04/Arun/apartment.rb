class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :name, :renters
	def initialize (price, is_occupied, sqft, num_beds, num_baths, name)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@name = name
		@renters = []
	end
	def to_s
		puts "#{price}, #{is_occupied}, #{sqft}, #{num_beds}, #{num_baths}, #{name}"

	end
	# def list_renters


	# end
end
# apt = Apartment.new("20", "yes", "200", "3", "2")
# puts apt.to_s