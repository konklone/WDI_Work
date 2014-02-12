# <!-- ### Wizard
# - Create a file called wizard.rb
# - In it define a wizard class. Here's the spec:
# - A wizard has:
#   - a name
#   - an array of spells (which will be strings)
# - We should be able to read and write for each attribute
# - We should be able to create a new wizard object, and when we create it it should have no spells at first
# - We should be able to convert to wizard object to a string in a way that tells us the name and all the spells they know.

# - After you've defined the class:
# - Create a new wizard named "Harry Potter" and store it in a variable called harry
# - Add "Lumos" to the spells Harry knows
# - Add "Accio" to the spells Harry knows
# - Add "Expecto Patronum" to the spells Harry knows
# - Print harry to the screen to check your to_s method -->


class Wizard

	attr_accessor :name, :spells

	def initialize(name)
		@name = name
		@spells = []
	end


	def add_spell(spell)
		@spells.push(spell)
	end

	def to_s
		"#{@name} the wizard knows the following spells: #{@spells.join(, )}"
	end

	harry = Wizard.new("Harry Potter")

	harry.add_spell("Lumos")
	harry.add_spell("Accio")
	harry.add_spell("Expecto Patronum")
	harry.spells.push("Oi!")

	puts harry #puts will automatically call the to_s

end	