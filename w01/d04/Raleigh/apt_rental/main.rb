### MAIN ###

require_relative "./person"
require_relative "./apartment"
require_relative "./building"
require "pry"

# Create the building
main_building = Building.new("St. George Tower.", "Modern", "yes", "no", "17")

def menu
   puts "\n***Apartment Rental***"
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
      puts "\nNew apartment added!"

      main_building.add_apt(apt_name, apt_obj)

   elsif response == "2"
      puts "Please input the name of tenant:"
      name = gets.chomp

      puts "Please input tenant's age:"
      age = gets.chomp

      puts "Please input tenant's gender:"
      gender = gets.chomp

      puts "What apartment does this tenant live in?"
      apartment = gets.chomp

      person_new = Person.new(name, age, gender, apartment)   

      # Conditional does NOT work
      if apt_obj == true
          apt_obj.add_renter(person_new.to_s)
          puts "\nNew tenant added!"
      else
         puts "\nThat apartment does not exist yet. Please create a new apartment."
      end

   elsif response == "3"
      puts main_building.list_apartments

   elsif response == "4"
      puts "What apartment are you inquiring about?"
      apt_inquire = gets.chomp

      if main_building.apartments.key == apt_inquire
         main_building.apartments[apt_inquire].list_renters
      else
         puts "\nThat apartment does not exist."
      end

   else
      puts "\nThat is not an option."
      
   end

   response = menu
end
