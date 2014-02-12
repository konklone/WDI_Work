class Animal

  def initialize(name, species)
    @name = name
    @species = species
    @toys = []# this will be a array
  end

  def to_s
    return "This is #{@name}. It's a #{@species}. These are its toys: #{@toys.join(", ")}."
  end

   def name
    @name
  end

  def species
    @species
  end

  def toys
    @toys
  end

  def add_toys(x)
    @toys.push(x) 
  end


end


  # - An animal should have a name.
  # - An animal should have a species.
  # - An animal can have multiple toys, but doesn't start with any.
  # - When we print an animal to a string, it should tell us about its name, species and all of its toys.

#   spot = Animal.new("Spot", "Dog")

# puts spot.name
