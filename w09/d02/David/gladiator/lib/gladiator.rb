

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

  def add_gladiators(name, weapon)
    if gladiators.count < 20
      gladiators[name] = {weapon: weapon}
    end
  end

  def gladiators_fight(name1, name2)
    fight_arr = [name1, name2]
    name1_weapon = gladiators[name1][:weapon]
    name2_weapon = gladiators[name2][:weapon]
    if fight_arr.index("Maximus") != nil 
      max_index = fight_arr.index("Maximus")
      loser = fight_arr[(max_index -1).abs]
    elsif 
      loser = fight_arr.sample
      winner = fight_arr[(fight_arr.index(loser) -1).abs]
      if gladiators[loser][:weapon] == "Trident" && gladiators[winner][:weapon] == "Short Sword" 
        loser = winner
      end
    else
      loser = fight_arr.sample
    end
    gladiators.delete(loser)
  end

end