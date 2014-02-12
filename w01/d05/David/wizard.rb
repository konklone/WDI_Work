class Wizard

attr_accessor :name, :spells

  def initialize(name)
    @name = name
    @spells = []
  end

  def to_s
    "Your wizard name #{@name} knows #{@spells.join(", ")} spells"
  end

end

harry = Wizard.new("Harry Potter")
# harry.spells[0] = "Lumos"
# harry.spells[1] = "Accio"
# harry.spells[2] = "Patronum"

harry.spells.push("Lumos", "Accio", "Patronum")

puts harry