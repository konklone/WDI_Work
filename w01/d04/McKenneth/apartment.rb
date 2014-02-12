require_relative 'person'
require_relative 'building'

class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_bedrooms, :num_bathrooms, :listing, :renters
  
  $renters = []
  $listing = []
  def initialize
      @price
      @is_occupied
      @sqft
      @num_bedrooms
      @num_bathrooms  
    end

#makes an apartment with user input
    def make_apartment(some)
        puts "How much does the apartment cost?"
        @price = "$" + gets.chomp
        @is_occupied = "is occupied"
        
        puts "How much sq footage does it have?"
        @sqft = gets.chomp + " sqft"
        
        puts "How many bedrooms?"
        @num_bedrooms = gets.chomp + " bedrooms"
        
        puts "How many bathrooms?"
        @num_bathrooms = gets.chomp + " bathrooms"
      #pushes attr into hash  
        $listing.push(some,@price,@is_occupied,@sqft,@num_bedrooms,@num_bathrooms)
        $building.add_apartment($listing[0], $listing[1..5])
      end

    def to_s(array)
      puts "This apartment is apartment number #{$listing}. It costs #{@price}, is not occupied, is #{@sqft}, has #{@num_bedrooms}, #{num_bathrooms}"
    end

end