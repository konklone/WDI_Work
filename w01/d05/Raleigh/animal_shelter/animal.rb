### Animal Class ###

class Animal
   def initialize(animal, species)
      @animal = animal
      @species = species
      @toys = []
   end

   def animal
      @animal
   end

   def species
      @species
   end

   def add_toys(new_toy)
      @toys.push(new_toy.split(", "))
   end

   def to_s
      "#{self.animal} the #{self.species} has the following toys: #{@toys.join(", ")}."
   end

end