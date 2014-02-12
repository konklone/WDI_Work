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
    @toys
  end

  def to_s
    if self.toys.length == 0
      puts "#{self.name} is a #{self.species} and it has no toys."
    else
      puts "#{self.name} is a #{self.species} and its toys are: #{self.toys.join(" ") }"
    end
  end

end