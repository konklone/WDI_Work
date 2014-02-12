require './person'
require './apartment'
require './building'

require 'pry'

###calls to test classes and methods
# person1 = Person.new("Nichol", 37, "Male", "5C")
# person2 = Person.new("Sarah", 38, "Female", "5C")

# apartment5c = Apartment.new(1500, 650, 2, 1)
# apartment1a = Apartment.new(1000, 350, 1, 1)

# apartment5c.add_renter(person1)
# apartment5c.add_renter(person2)

# puts apartment5c.to_s


# array_of_apartments = Array.new

# array_of_apartments << apartment5c
# array_of_apartments << apartment1a

# puts array_of_apartments[0]
# puts array_of_apartments[1]

# puts apartment5c.list_renters

#building1 = Building.new("282 Prospect Place", "Greco-Roman", false, true, 3, array_of_apartments)

#result = building1.to_s

#puts result

############### MAIN PROGRAM BELOW ##################
# Specifications
# 	 You should include functionality from your other Ruby files
# 	 It should create a new building for you
# 	 It should display a menu of options for the user to choose from:
#  		Create a new apartment, getting the appropriate input from the user
#     		Make sure to add the apartment to the building it belongs to
#   	Create a new person, getting the appropriate input from the user
#     		Make sure to add the person to the apartment it belongs to
#   	Quit
######################################################

def display_menu
	
	puts " "
	puts "Would you like to (a)dd a new apartment, (c)reate a new person?, or (q)uit?"
	puts " "
	gets.chomp.downcase
end

def add_apartment(building)
	puts "You are adding a new apt. \n"
	puts "What is the rental price?"
	price = gets.chomp.to_i
	puts "How many square feet is it?"
	sqft = gets.chomp.to_i
	puts "How many bedrooms?"
	beds = gets.chomp.to_i
	puts "And how many baths?"
	baths = gets.chomp.to_i


	building.apartments << Apartment.new(price, sqft, beds, baths)

end

def create_person()
	puts "You are creating a new person ;)"
	puts "What is their name?"
	name = gets.chomp
	puts "How many years do they have?"
	age = gets.chomp.to_i
	puts "What is their gender?"
	gender = gets.chomp
	puts "What aparment are they renting?"
	apartment = gets.chomp

	person1 = Person.new(name, age, gender, apartment)

	return person1
end


my_building = Building.new("282 Prospect Place", "Greco-Roman", false, true, 3)

choice = nil

puts "Welcome to the Rental App"
puts "\n"

while choice != "q"
	choice = display_menu

	case choice
	when "a"
		add_apartment(my_building)
	when "c"
		person1 = create_person
		#my_building.apartments{person1.name => aparment}
	when "q"
		"puts goodbye"
	else 
		"bad input, buddy"
	end

end

