

# soggy_gardens = Array.new
# soggy_gardens = {:address => "123 ABC dr.", :style => "ol school", :has_doorman => "yes", :is_walkup => "yes", :num_floors => "5"}
# soggy_gardens_apartments = {:Tenant_1 => "AptA", :Tenant_2 => "AptB", :Tenant_2 => "AptC", :Tenant_3 => "AptD", :Tenant_4 => "AptE", :Tenant_5 => "AptF"}

# # def apartment_status (apartments)
# # 	puts "Would you like to see the the status of the apartments in this building? (Y) or (N)?"
# # 	response = gets.chomp.upcase 
# # 	if response == "Y"
# # 		puts "#{soggy_gardens_apartments}"
# # 		elsif response == "N"
# # 			puts "Thanks anyway! Have a great day."
# # 		else
# # 			puts "Please input again."
# # end 
# puts soggy_gardens_apartments
class Building 
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartment
	def initialize (address, style, has_doorman, is_walkup, num_floors)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartment = []

	end

	def to_s
		puts "The building is at address #{address}, in the #{style} style, it #{has_doorman} and it #{is_walkup} that has #{num_floors}"
	end
end

building = Building.new("123 ABC dr.", "ol' school", "has a doorman", "is a walkup", "3 floors")
puts building.to_s
	# building = Building.new ("123 ABC dr.", "ol school", "yes", "Elevator", "5 floors")
	# puts building.to_s


