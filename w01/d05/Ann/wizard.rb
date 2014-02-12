class Wizard 
  attr_accessor :name, :spells 
  def initialize(name)
    @name = name
    @spells = [] 
  end 

  def to_s
    "#{@name} the wizard knows the following spells #{@spells.join(", ")}."
  end 

  def do_spell
    return @spells
  end 
end 

harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos", "Accio", "Expecto Patronum")
puts "HARRY.SPELLS: #{harry.spells}"
puts "HARRY.DO_SPELL: #{harry.do_spell}"

#runs the harry method (to_s)
#puts harry 


