class Animal
  
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  def toys
    @toys
  end

  def to_s
    "#{@name} the #{@species} has #{@toys.count} toy(s)."
  end

end

