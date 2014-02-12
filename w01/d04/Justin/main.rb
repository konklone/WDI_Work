

### MAIN ###
 
require_relative "./person"
require_relative "./apartment"
require_relative "./building"
require "pry"
     
####Create the building
####                        (address, style, doorman, walkup, floors)
main_building = Building.new("22 Awesome St.", "Pretty", true, true, 1337)

##dummy data
apt = Apartment.new("one",1,2,3,4)
main_building.add_apt("one", apt)

joe = Person.new("Joey", 22, "m", "one")  
    main_building.apartments["one"].add_renter(joe)


##end dummy data

def menu
  puts "***Apartment Rental***"
  puts "(1) Create a new apartment, (2) Create a new tenant, (3) List all apartments in building, (4) List all tenants in apartment, or (Q) Quit the program:"
  gets.chomp.downcase
end
 
########### DEFINITIONS OVER, PROGRAM BEGINS ##############
 
response = menu
 
# This process will continue until the user selects a quit option from the menu
while response != "q"
 
  if response == "1"
    puts "Please input the name of your apartment:"
    apt_name = gets.chomp

    puts "Please input the price of your apartment:"
    price = gets.chomp

    puts "Please input the square footage of your apartment:"
    sqft = gets.chomp

    puts "Please input the number of bedrooms in your apartment:"
    bed = gets.chomp

    puts "Please input the number of bathrooms in your apartment:"
    bath = gets.chomp

    puts "Is the apartment occupied?"
    occupied = gets.chomp

    apt_obj = Apartment.new(price, occupied, sqft, bed, bath)
    puts "New apartment added!"

    main_building.add_apt(apt_name, apt_obj)
  elsif response == "2"
    puts "Create a person, enter a name"
    name = gets.chomp
    puts "Whats their age?"
    age = gets.chomp
    puts "Male or Female?"
    gender = gets.chomp
    puts "Whats the name of the apartment?"
    apartment = gets.chomp

    person1 = Person.new(name, age, gender, apartment)  
    main_building.apartments[apartment].add_renter(name)
    #new_tenant = Apartment.add_renter(person1)

  elsif response == "3"
    puts main_building.apartments

  elsif response == "4"
    puts "What apartment are you inquiring about?"
    apartment = gets.chomp
    main_building.apartments[apartment].list_renters
  else
    puts "That is not an option."
  end
  response = menu
end