class Animal
  # attr_accessor :petname, :species, :toys
  def initialize(petname, species, toys)
    @petname = petname
    @species = species
    @toys = toys
    # @adopted_pet = []
  end

 def petname
    @petname
  end

  def to_s
    return "#{@petname}, #{@species}. Toy(s): #{@toys}"
  end

  def species
    @species
  end

  def toys
    @toys
  end

end






