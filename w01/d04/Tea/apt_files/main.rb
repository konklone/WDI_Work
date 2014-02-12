#////Open Menu Choicies

# List or Create
  # List

    # -Renters
          #put the array items as string items 
    # -Apartments
          #put the array items as string items 
    # -Buildings
          #put the array items as string items 

  # Create
    # -Renters
        #create new renter
        #establish renter attributes
        #push new renter to renter array
    # -Apartments
        #create new apartment
        #establish apartment attributes
        #push new apartment to apartment array
    # -Buildings
        #create new building
        #establish building attributes
        #push new building to building array

require_relative 'person'
require_relative 'apartment'
# require_relative 'building'


def menu
  puts "new person"
  puts "new apartment"
  puts "quit"
end
puts "Good Morning Gorgeous! What would you like to do?"
while true
  menu
  menu_choice = gets.chomp


  case menu_choice
    when "new person"
      #gets parameters to make new person class
      puts "What is the renters name?"
      variable1 = gets.chomp
      par1 = variable1
      puts "What is the renter's age?"
      par2 = gets.chomp.to_i
      puts "What is the renter's gender?"
      par3 = gets.chomp
      puts "What is the renter's apartment?"
      par4 = gets.chomp.to_i
      #creates new person of class Person
      tenant = Person.new(par1, par2, par3, par4)
      #puts a readable string about tenant
      puts tenant.to_s
      apartment.add_tenant(tenant.to_s)
      

    when "new apartment"

      #if create building /// price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
      puts "What is the cost of rental?"
      par1 = gets.chomp
      puts "Is it occupied?"
      par2 = gets.chomp
      puts "How many square feet is it?"
      par3 = gets.chomp.to_i
      puts "How many bedrooms are there?"
      par4 = gets.chomp.to_i
      puts "How many bathrooms are there?"
      par5 = gets.chomp.to_i


      apartment = Apartment.new(par1, par2, par3, par4, par5)
      puts apartment.to_s
      all_apartments = Array.new
      all_apartments.push(apartment)
      apartment.list_renters
    when "quit"
      break
    end
end





