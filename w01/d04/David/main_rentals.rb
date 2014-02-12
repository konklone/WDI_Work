require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

building = Building.new

puts "Welcome to Rental World NYC"
#### creates new building and populates class variables
print "Please enter the building name you would like to create Address: "
address = gets.chomp
building.address = address
print "Style: "
style = gets.chomp
building.style = style
print "Doorman (Y/N): "
has_doorman = gets.chomp
building.has_doorman = has_doorman
print "Walk-Up (Y/N): "
is_walkup = gets.chomp
building.is_walkup = is_walkup
print "Number of Floors: "
num_floors = gets.chomp
building.num_floors = num_floors
#prints confirmation information
puts building

person = Person.new
##### This is giving me an error for undefined method if I create a person and then an apartment
apartment = Apartment.new
options = ""

#sub-menu to give options to user
while options != :q
puts "Would you like to (CP) create person, (CA) create apartment, (LA) list apartments, (LP) list people in an apartment, or (Q) quit?"
options = gets.chomp.downcase.to_sym


#print the menu to user 
case options
  when :cp 
    #populates variables in person class
    print "Please enter person's name: "
    name = gets.chomp
    person.name = name
    print "age: "
    age = gets.chomp
    person.age = age
    print "gender: "
    gender = gets.chomp
    person.gender = gender
    print "apartment name: "
    apartment = gets.chomp
    #prints confirmation information
    puts person
  when :ca
    print "To create your new apartment description please enter Price: "
    price = gets.chomp
    binding.pry ##### pry DEBUGG
    apartment.price = price
    print "Is it Occupied(Y/N): "
    is_occupied = gets.chomp
    apartment.is_occupied = is_occupied
    print "Number of Square Feet: "
    sqft = gets.chomp
    apartment.sqft = sqft
    print "Number of Bedrooms: "
    num_beds = gets.chomp
    apartment.num_beds = num_beds
    print "Number of Bathrooms: "
    num_baths = gets.chomp
    apartment.num_baths = num_baths
    puts apartment
    #update the hash of apartments in the building class
    # building_new.apartment[apt_name] = apartment_new
    # puts building_new.apartment
  when :la 
    building.apartments.each { | x, y | puts x }
  when :lp 
end
 #adds to hash
    person.apartment[apartment] = name
     puts "DEBUGG: Hash for person and apartment: #{person.apartment}"
    building.apartments[apartment] = building
  end

 
  puts "DEBUGG: Hash for building and apartment: #{building.apartments}"



