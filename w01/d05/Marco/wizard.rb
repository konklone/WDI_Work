class Wizard 
  attr_accessor :name, :spells

  def initialize name#, spells ###When we create this, there will be no spells
    @name = name
    @spells = [] #spells - needs to be an empty array
  end

  def to_s 
    "#{name} knows the following spells: #{spells.capitalize.join", "}" #if you puts this, instead of returning a string, it will print it
  end
end

print "Enter New Wizard: "
  #new_wizard = gets.chomp.downcase

new_wizard = Wizard.new(gets.chomp.downcase)
puts new_wizard

print "Enter Known Spells: "
  spells_known = gets.chomp.downcase
Wizard.spells.push(spells_known)

#class work answer

# harry =  Wizard.new("Harry Potter")
# harry.spells.push("Lumos", "Accio", "Expecto Patronum" )
# #puts harry.spells ##will view spells you just entered above

# puts harry