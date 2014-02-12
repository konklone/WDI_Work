class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address = nil, style = nil, has_doorman = nil, is_walkup = nil, num_floors = nil, apartments = nil)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = apartments
	end

	def to_s
		"#{address}"
	end

	def list_apartments		
		puts "All apartments in building:"
		@apartments.values.each { |apt_class| puts apt_class.name }
	end
end