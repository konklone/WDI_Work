class RoundStarter 

  def initialize(episode) 
    @episode = episode 
  end 

  def episode
    @episode 
  end 

  def next_round 
    round_category =  case episode.rounds.count
    when 0
      "Appetizer"
    when 1
      "Entree"
    when 2
      "Dessert"
    end

    Round.create(category: round_category, episode: episode)    

    # if episode.rounds.count == 0 
    #   appetizer = Round.create(category: "Appetizer", episode: episode)
    # elsif episode.rounds.count == 1
    #   entree = Round.create(category: "Entree", episode: episode)
    # end 
  end 


  #encapsulate logic for creating a new round 



end 

# episode has 2 rounds

