require "/person"
require "/building"
require_relative  "/apartments"
 


      #creates new instance of a building
      new_building = Building.new

      #creates a new apartment
      puts "Pick a new Apartment Number"
      new_apartment = Apartment.new
      new_apartment = gets.chomp.downcase
      
      #creates a new person
      puts = "Please enter your name age gender and new Apartment"
      new_person= gets.chomp.downcase
      new_person = Person.new



