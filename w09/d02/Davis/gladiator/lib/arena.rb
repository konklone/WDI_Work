class Arena
  attr_reader :name, :fighter1, :fighter2, :winner, :entertained
  attr_accessor :gladiators

  def initialize(name)
    @name = name
    @gladiators = []
    @fighter1 = nil
    @fighter2 = nil
    @winner = nil
    @entertained = false
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator if gladiators.count < 20
  end

  def contains?(gladiator)
    @gladiators.include?(gladiator)
  end

  def pick_fighters(fighter1, fighter2)
    @fighter1 = fighter1
    @fighter2 = fighter2
  end

  def fight
    if fighter1.name == "Maximus"
      @winner = fighter1
      @entertained = true
      return
    elsif fighter2.name == "Maximus"
      @winner = fighter2
      @entertained = true
      return
    else
      @entertained = false
    end

    case fighter1.weapon
    when "Club"
      if fighter2.weapon == "Short Sword"
        @winner = fighter2
      elsif fighter2.weapon == "Trident"
        @winner = fighter1
      else #fighter2.weapon == "Club"
        @winner = nil
      end
    when "Trident"
      if fighter2.weapon == "Short Sword"
        @winner = fighter1
      elsif fighter2.weapon == "Trident"
        @winner = nil
      else #fighter2.weapon == "Club"
        @winner = fighter2
      end
    else "Short Sword"
      if fighter2.weapon == "Short Sword"
        @winner = nil
      elsif fighter2.weapon == "Trident"
        @winner = fighter2
      else #fighter2.weapon == "Club"
        @winner = fighter1
      end
    end
  end

  def vote
    vote = gets.chomp.downcase
    case vote
    when 'u'
      "Oh you're so merciful"
    when 'd'
      loser = @winner == fighter1 ? fighter2 : fighter1
      @gladiators.delete(loser)
      "Not so merciful"
    else
      "Invalid vote"
    end
  end
end