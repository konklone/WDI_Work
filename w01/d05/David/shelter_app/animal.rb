class Animal

  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = toys
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
    "Animal Name: #{@name}, Species: #{@species}, Toys: #{@toys.join(", ")}"
  end

end



