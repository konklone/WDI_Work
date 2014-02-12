class Arena
  def initialize(name)
    @name = name
    @gladiators = {}
  end

  def name
    @name
  end

  def gladiators
    @gladiators
  end

  def add_gladiator(name, weapon)
    if @gladiators.has_key?(name)
      false
    else
      if @gladiators.length < 20
        @gladiators[name] = weapon
      else
        false
      end
    end

  end

  def find_gladiator(name)
    if @gladiators[name] != nil
      true
    else
      false
    end

  end
end