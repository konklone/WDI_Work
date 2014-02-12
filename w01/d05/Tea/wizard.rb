class Wizard
  attr_accessor :name, :spells

  def initialize (name)
    @name = name
    @spells = []
  end

  def to_s
    spell_string = spells.join(", ")
    puts "#{name} knows the following spells: #{spell_string}."
  end

  def add_spell(new_spell)
    spells << new_spell
  end

end

harry = Wizard.new("Harry Potter")
david = Wizard.new("David")
david.add_spell("Wingardium Leviosa")

harry.add_spell("Lumos")
harry.add_spell("Accio")
harry.add_spell("Expecto Patronum")
puts harry
puts david
