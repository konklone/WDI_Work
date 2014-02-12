class Arena
  def initialize(name)
    @name = name
    @gladiators = []
  end

  def name 
    @name
  end

  def gladiators
    @gladiators
  end

  def add_gladiator(name, weapon)
    gladiators.push({name: name, weapon: weapon})
  end

  def find_gladiator(name)
    gladiators.find do |gladiator|
      gladiator[:name] == name
    end
  end

  def fight_winner(fighter1, fighter2)
    if (fighter1 = "Mad Maximus") || (fighter2  = "Mad Maximus")
      return "Mad Maximus"
    end
  end
end