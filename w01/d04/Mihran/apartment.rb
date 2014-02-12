class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

      def initialize (price, is_occupied, sqft, num_beds, num_baths)
        @price = price
        @is_occupied = is_occupied
        @sqft = sqft
        @num_beds = num_beds
        @num_baths = num_baths
        @renters = [  ]
      end

      def to_s
        return "This apartment costs $ #{@price}, #{@is_occupied}, is #{@sqft} square feet, #{@num_beds} beds, #{@num_baths} baths."
      end

      def list_renters
        puts @renters
      end


end

