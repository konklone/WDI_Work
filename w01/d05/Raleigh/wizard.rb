### Wizard ###

class Wizard
   attr_accessor :name, :spells

   def initialize(name)
      @name = name
      @spells = []
   end

   def add_spells(spell)
      @spells.push(spell)
   end

   def to_s
      "The wizard #{@name} knows the following spells: #{@spells.join(", ")}"
   end

end

### Definitions End, Program Begins ###


harry = Wizard.new("Harry Potter")

harry.add_spells("Lumos")
harry.add_spells("Accio")
harry.add_spells("Expecto Patronum")

puts harry.to_s
