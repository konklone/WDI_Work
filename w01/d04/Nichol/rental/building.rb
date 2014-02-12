class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address, style, doorman, walkup, numfloors)
	
		@address = address
		@style = style
		@has_doorman = doorman
		@is_walkup	= walkup
		@num_floors = numfloors
		@apartments = Hash.new
	end

	def list_apartments
		
		return "this is a string of all the apartments PLACEHOLDER"
	end

	def to_s
		#need to iterate through the keys of hash of apartments
		#binding.pry
		"#{@address} #{@style} #{@has_doorman} #{@is_walkup} #{@num_floors} #{@apartments}"
	end


end
