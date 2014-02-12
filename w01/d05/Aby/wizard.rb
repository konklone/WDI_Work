class Wizard
	attr_accessor :name, :spells 

	def initialize(name)
		@name = name
		@spells = []
	end

	def to_s
		"#{@name} the wizard knows the following spells: #{spells.join(", ")}"
	end

end

harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos", "Accio", "Expecto Patronum")
puts harry.spells

puts harry