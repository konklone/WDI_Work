class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

	@@total_apartments = 0

	def initialize(price, sqft, beds, baths)
		@price = price
		@is_occupied = false
		@sqft = sqft
		@num_beds = beds
		@num_baths = baths
		@renters = Array.new #@renters = nil #will be an array of persons
	
		@@total_apartments += 1
	end

	def to_s
		string_of_renters = @renters.join(", ")
		return "#{@price}, #{@is_occupied}, #{@sqft}, #{@num_beds}, #{@num_baths}, #{string_of_renters}"
	end

	def list_renters
	#returns a string with all of the renters.
		 if @renters == nil
		 	puts "your building is empty"
		 else
		 	return @renters.join(", ")
		 end
	end

	def add_renter(person)
		if @is_occupied == false
			@is_occupied = true
		end
		@renters << person
	end


end
