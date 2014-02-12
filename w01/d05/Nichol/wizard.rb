class Wizard

	attr_accessor :name, :spells

	def initialize(name)
		@name = name
		@spells = Array.new
	end

	def to_s
		return "#{@name} knows #{@spells.join(", ")}"
	end
end

harry = Wizard.new("Harry Potter")
harry.spells << "Lumos"
harry.spells << "dissapear"
harry.spells << "go to lunch"
harry.spells[10] = "test"

puts harry

