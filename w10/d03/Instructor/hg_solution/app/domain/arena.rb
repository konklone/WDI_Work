module Arena
  def self.fight_to_the_death!(first, second)
    if first > second
      second.die!
    else
      first.die!
    end
  end
end