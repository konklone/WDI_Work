class Wizard
attr_accessor :name, :spells

def initialize(name)
  @name = name
  @spells = []
end


def to_s
  return "my name is #{@name} I know these spells: #{@spells.join("|")}"
end

end

harry = Wizard.new("Harry Potter")

harry.to_s
harry.name
harry.spells.push("Lumos")
harry.spells.push("Accio")
harry.spells.push("Expecto patronum")
puts harry.spells

puts harry
