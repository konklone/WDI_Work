#Object Spec
class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = {}
  end

#Define the instance variables with their proper methods
  def name 
    @name
  end

  def species
    @species
  end

  def toys
    @toys 
  end

  def add_toy(toy)
    @toys.push(toy)
  end

  #this method creates a string with all the incident variables
  def to_s
    puts "#{name} is a #{species} and plays with #{toys.join(" ")}:  "
  end
end

