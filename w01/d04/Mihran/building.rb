class Building 
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

      def initialize (address, style, has_doorman, is_walkup, num_floors)
        @address = address
        @style = style
        @has_doorman = has_doorman
        @is_walkup = is_walkup
        @num_floors = num_floors
        @apartments = { }
      end

      def to_s
        return "This building's address is #{@address}, it is in the #{@style} style, it #{@has_doorman}, #{@is_walkup}, has #{@num_floors} floors."
      end

      def list_apartments
        puts @apartments
      end



end
