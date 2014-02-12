class Wizard
  attr_accessor :name, :spells
  def initialize(name) # we'll worry about what spells he's got later
    @name = name
    @spells = []
  end

  def to_st # method to return a string
    return "#{:name} the wizard knows the following skills #{:spells}."
  end  
end

harry = Wizard.new("Harry Potter") 
# this is how we add to spells 
harry.spells.push("Lumos", "Accio", "Expector Patronum")
puts harry.spells

