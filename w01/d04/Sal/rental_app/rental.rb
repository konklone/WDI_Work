require_relative 'person'
require_relative 'building'
require_relative 'apartment'

puts "Here is a GREAT building"
$best_building = Building.new("51", "Swanky", "YES", "NO", "50")
puts $best_building.to_s

#GIVE USER CHOICES
def menu
  puts "Would you like to create a new apartment(na), create a new person(np), list all apartments in the building(la) or list all the people in an apartment?(lp)"
  response = gets.chomp.downcase
  response
end

#FUNCTION TO CREATE A NEW APARTMENT 
def create_apartment
	puts "What is the price of the apartment?"
	price = gets.chomp.downcase
	puts "Is the apartment occupied?"
	is_occupied = gets.chomp.downcase
	puts "Number of Square feet?"
	sqft = gets.chomp.downcase
	puts "How many bedrooms?"
	num_beds = gets.chomp.downcase
	puts "How many bathrooms?"
	num_baths = gets.chomp.downcase
	puts "What is the name of the apartment?"
	name = gets.chomp.downcase
	apartment = Apartment.new(price, is_occupied, sqft, num_beds, num_baths, name)
	$best_building.apartments[name] = apartment
end

#FUNCTION TO CREATE A NEW PERSON
def create_person
	puts "What is the name of the occupant?"
	name = gets.chomp.downcase
	puts "What is the age of the occupant?"
	age = gets.chomp.downcase
	puts "What is the gender of the occupant?"
	gender = gets.chomp.downcase
	puts "What apartment does he/she live in?"
	apartment = gets.chomp.downcase
	person = Person.new(name, age, gender, apartment)
	$best_building.apartments[apartment].renters.push(person)
end

#FUNCTION TO LIST APARTMENT NAMES (should print full listings, have not gotten that to print properly)
def list_apartments
	puts $best_building.apartments.keys
end

# #FUNCTION TO LIST PEOPLE IN EACH APARTMENT (did not complete yet)
# def list_people
# end


response = menu
# This process should continue until the user selects a quit option from the menu

while response != 'q'
  if response == "na"
  	create_apartment
  elsif response == "np"
  	create_person
  elsif response == "la"
  	list_apartments
  elsif response == "lp"
  	list_people
end
response = menu
end









