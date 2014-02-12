require_relative "building"
require_relative "apartment"
require_relative "person"

def menu
	puts "Would you like to create a new apartment (na) create a person (cp) list all apartments in building (la) or list people in a given apartment (lp)"
	$user_choice = gets.chomp.downcase
	@user_choice
end
my_building = Building.new("123 Ruby Lane", "modern", "yes", "yes", "3")

puts my_building.to_s
menu


# puts "would you like to create a new apartment (na), or create a person (cp)?"
# user_choice = gets.chomp.downcase

if $user_choice == "na"
	puts "What is the price of the apartment?"
	price = gets.chomp.downcase
	puts "Is the apartment occupied?"
	is_occupied = gets.chomp.downcase
	puts "number of square feeet"
	sqft = gets.chomp.downcase
	puts "How many bedrooms?"
	num_beds = gets.chomp.downcase
	puts "How many bathrooms?"
	num_baths = gets.chomp.downcase
	puts "what is the name of the apartment?"
	name = gets.chomp.downcase
	apartment = Apartment.new(price, is_occupied, sqft, num_beds, num_baths, name)
	my_building.apartments[name] = apartment
elsif $user_choice == "cp"
	puts "What is the name of the occupant?"
	name = gets.chomp.downcase
	puts "What is the age of the occupant?"
	age = gets.chomp.downcase
	puts "What is the gender of the occupant?"
	gender = gets.chomp.downcase
	puts "What apartment number?"
	apartment = gets.chomp.downcase
	person = Person.new(name, age, gender, apartment)
	my_building.apartments[apartment].renters.push(person)
elsif $user_choice == "la"
	apartment = Apartment.new(price, is_occupied, sqft, num_beds, num_baths, name)
	apartment = renters.keys
	puts renters
	
end
@user_choice = menu

while $user_choice != "q"
	$user_choice = menu

end




# person.renters.push



# # Array (person)

# # person.new pushes
