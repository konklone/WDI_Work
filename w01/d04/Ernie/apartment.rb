require "pry"
   
class Apartment

          attr_accessor :price, :is_occupied,:sqft,:num_beds,:num_baths

        def initialize(price,is_occupied,sqft,num_beds,num_baths)
              @price = price
              @is_occupied = is_occupied
              @sqft = sqft
              @num_beds = num_beds
              @num_baths = num_baths
              @renters = []
        end
        
        def add_renter(person)
              @renters.push(person)
        end

        def to_s 
            "This Apartment is #{@is_occupied} and renting for #{@price}"
        end

        def list_renters
              @renters.join
        end
end


# new_apartment = Apartment.new(1000,true,2000,2,2)
# new_apartment.to_s(true,1000)
