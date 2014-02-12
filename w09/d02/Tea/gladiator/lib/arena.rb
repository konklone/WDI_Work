class Arena

  attr_reader :name, :gladiators

  def initialize(name, gladiators = [])
    @name = name
    @gladiators = gladiators
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 20
      @gladiators << gladiator
    end
  end

  def find_gladiator(name)
    boop = gladiators.select do |gladiator|
      gladiator.name === name
    end
    boop[0]
  end

  def pick_two(first, second)
    @fighters = []
    @fighters << find_gladiator(first)
    @fighters << find_gladiator(second)
  end

end