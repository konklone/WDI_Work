class Wizard
	attr_accessor :name, :spells

	def initialize(name = nil, spells = [])
		@name = name
		@spells = spells
	end

	def to_s
		"#{@name} the wizard knows the following spells: #{@spells.join(", ")}"
	end
end

wizard = Wizard.new("Harry Potter")
wizard.spells << "Lumos"
wizard.spells << "Accio"
wizard.spells << "Expecto Patronum"
#wizard.push("Lumos", "Accio", "Expecto Patronum")
puts wizard.to_s
