class Animal 
  
  #init -- instantiate an Animal object with given "name" and "species"
  #  sets "toy" and "animals" to empty arrays
  def initialize(name, species)
    @name = name 
    @species = species 
    @toy = []
  end 
  
  #name -- returns the object's name
  def name
    @name
  end

  #species -- returns the object's species
  def species
    @species 
  end 

  #add_toy -- pushes the parameter "toys" into the instance variable array "@toy"
  def add_toy( param1 ) #define a method named add_toy that accepts 1 parameter 
    @toy.push( param1 ) #push the parameter on to the instance variable array @toy
  end 

  #to_s -- returns a string representation of the object
  def to_s
    "#{@name} is a #{@species} and likes to play with #{@toy}."
  end 

  #list_animals -- should push the name and species into the animals array
  def list_animals
      @animals.join("\n")
  end
end  

#######################################

# sparky = Animal.new("Sparky", "Dog")
# cranky = Animal.new("Cranky", "Cat")
# ritz = Animal.new("Ritz", "Lizard")
# pat = Animal.new("Spot", "Dog")

# sparky.add_toy("ball")
# cranky.add_toy("mouse")
# ritz.add_toy("leaf")
# pat.add_toy( "rocket launcher" )

# puts sparky.to_a 
# puts cranky.to_a
# puts ritz.to_a
# puts pat to_a 

# puts list_animals 





