class Animal

  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = []
  end

  def name 
    @name
  end

  def species
    @species
  end

  def toys
    @toys
  end

  def to_s
    "#{@name} is a #{@species} and it has a #{@toys.join(", ")} to play with."
  end
end