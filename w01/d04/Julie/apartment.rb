require_relative "./main"
require_relative "./apartment"
require_relative "./building"


# * price
# * is_occupied
# * sqft
# * num_beds
# * num_baths
# * renters (an array of people(person objects))
 
# apartment.rb
# define class apartment
class Apartment
        attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renter
 
        def initialize(price, is_occupied, sqft, num_beds, num_baths)
                @apt_price = price
                @apt_occ = is_occupied
                @apt_sqft = sqft
                @apt_beds = num_beds
                @apt_baths = num_baths
                @renters = []            
        end
 
        def to_s
                "Apartment is #{@apt_sqft}, with #{apt_beds} and #{apt_baths}.  The apartment
                costs #{@apt_price}. \nOccupied: #{@apt_occ} "
        end
#add renters array
       
        def add_renter(person)
                @renters.push(person)
        end
 
        def list_renters
                puts "#{@renters}"
        end
end