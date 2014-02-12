class Animal
  def initialize(name, species)
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
    @toys.join(", ")
  end

  def add_toy(new_toy)
    @toys.push(new_toy)
  end

  def to_s
    "#{name} the #{species}.\nToys: #{toys}"
  end
end

