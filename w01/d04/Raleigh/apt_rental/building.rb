### Building Class ###

class Building
    attr_accessor :address, :style, :has_doorman,  :is_walkup, :num_floors, :apartments

   def initialize(address, style, doorman, walkup, floors)
      @address = address
      @style = style
      @has_doorman = doorman
      @is_walkup = walkup
      @num_floors = floors
      @apartments = {}
   end

   def add_apt(apt_name, apt_objects)
      added_apt = {apt_name => apt_objects}
      @apartments.merge!(added_apt)
   end 

   def list_apartments
      puts "Total appartments in building: #{@apartments.to_a.join(" ")}"
   end

   def to_s
      if @has_doorman == "yes" && @is_walkup == "yes"
         "The building is located at #{@address}.It is a #{@num_floors} walkup with a doorman. The building is done in the #{@style} style."
      elsif @has_doorman == "yes" && @is_walkup == "no"
         "The building is located at #{@address}.It has #{@num_floors} floors with a doorman. The building is done in the #{@style} style."
      elsif @has_doorman == "no" && @is_walkup == "yes"
         "The building is located at #{@address}.It is a #{@num_floors} walkup with no doorman. The building is done in the #{@style} style."
      else
         "The building is located at #{@address}.It has #{@num_floors} floors and no doorman. The building is done in the #{@style} style."
      end
   end

end