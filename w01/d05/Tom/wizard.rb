class Wizard
  attr_accessor :name, :spells

  # This will only run when you call the .new method creating a new instance of the Wizard class
  def initialize(name)
    @name = name
    @spells = []
  end

  def to_s
    "#{@name} the wizard knows ths following spells #{@spells.join(", ")}"
    #return "Hi David"
  end

  def do_spell
    return spells
  end

end

# Create an instance of the class wizard
harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos", "Sumos", "Accio")

# Shows the spells associated with the instance of the Wizard class harry
puts harry.spells

# This will run the to_s method.  You could add .to_s, but you don't need to it's implicit
puts harry
