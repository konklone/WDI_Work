class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
		def initialize (address, style, has_doorman, is_walkup, num_floors)
			@address = address
			@style = style
			@has_doorman = has_doorman
			@is_walkup = is_walkup
			@num_floors = num_floors
			@apartments = {}
		end
		def to_s
		puts "Located at #{address} it is a #{style} style building  #{has_doorman} it has a doorman #{is_walkup} it is a walkup and has #{num_floors} floors"
		end
end
# build = Building.new("1014", "modern", "yes", "yes", "3")
# puts build.to_s