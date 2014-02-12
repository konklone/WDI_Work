class Wizard
	attr_accessor :name
	attr_reader :spells

	def teach_a_spell(spell)
		@spells << spell
	end
	def initialize(name)
		@name = name
		@spells = []
	end

	def to_s
		if @spells.count > 1
			"#{@name} is a Wizard who knows the #{@spells.join(", ")} spells."
		elsif @spells.count == 1
			"#{@name} is a Wizard who knows the #{@spells.join(", ")} spell."
		else
			"#{@name} is a Wizard who knows the no spells yet."
		end
	end
end

harry = Wizard.new("Harry Potter")

harry.teach_a_spell("Lumos")
harry.teach_a_spell("Accio")
harry.teach_a_spell("Expecto Patronum")

puts harry.to_s