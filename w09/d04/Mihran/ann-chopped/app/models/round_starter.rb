class RoundStarter 

  def initialize(episode)
    @episode = episode
  end

  def episode
    @episode  
  end

  def next_round
    round_category = case episode.rounds.count
      when 0
        "Appetizer"
      when 1
        "Entree"
      when 2
        "Dessert"
    end
    Round.create(category: round_category, episode: episode)
  end

end 
