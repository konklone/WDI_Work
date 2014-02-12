class Wizard
  attr_accessor :name, :spells

  def initialize(name)
    @name = name
    @spells = []
  end

  def to_s
    puts "#{@name} knows the following spells : "
    @spells.each { |spell| puts spell }
  end

end

harry = Wizard.new("Harry Potter")
harry.spells << 'Lumos'
harry.spells << 'Accio'
harry.spells << 'Expecto Patronum'

harry.to_s
