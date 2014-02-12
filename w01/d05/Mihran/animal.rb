class Animal

    def initialize(name, species)
      @name = name
      @species = species
      @toys = []
    end

    def add_toys (toy)
      @toys.push(toy)
    end

    def get_name
      @name
    end
    
    def to_s
      return " #{@name.capitalize} the #{@species}, who has these toys: #{@toys.join(" and ") }."
    end

end



# #####Object Specs:
# - Animal:
#   - An animal should have a name.
#   - An animal should have a species.
#   - An animal can have multiple toys, but doesn't start with any.
#   - When we print an animal to a string, it should tell us about its name, species and all of its toys.