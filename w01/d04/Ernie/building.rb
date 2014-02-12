require "pry"

class Building

        attr_accessor :address,:style,:has_doorman,:is_walkup,:num_floors 
  
      def initialize(address,style,has_doorman,is_walkup,num_floors)
            @address = address
            @style = style
            @has_doorman = has_doorman
            @is_walkup = is_walkup
            @num_floors num_floors
            @list_apartments = {}
          end
  
      def to_s
            "This Building is on #{@address} with #{@has_doorman} a lovely #{@style} with these many #{@num_floors} and is #{@is_walkup}"
      end
      
      #prints an hash of the list of apartments
      def list_apartments
            @list_apartments.join
        end

end

