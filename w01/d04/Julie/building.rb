require_relative "./main"
require_relative "./apartment"
require_relative "./person"

# A building should have the following attributes:
 
# * address
# * style
# * has_doorman
# * is_walkup
# * num_floors
# * apartments (a hash where the keys are the names of the apartments)
 
 
class Building
        attr_accessor :apt_name, :apt_object, :address, :style, :doorman, :walkup, :floors, :apartments
 
        def initialize(address, style, doorman, walkup, floors)
                @apt_name = apt_name
                @apt_object = apt_object
                @bldg_address = address
                @bldg_style = style
                @bldg_doorman = doorman
                @bldg_walkup = walkup
                @bldg_floors = floors
                @apartments = {}
        end
 
 
        def to_s
                "The building has #{}"
        end
 
        def add_apt(apartment_name, apartment_object)
                apt_to_add = { apartment_name => apartment_object}
                # binding.pry
                @apartments.merge!(apt_to_add)
        end
 
end