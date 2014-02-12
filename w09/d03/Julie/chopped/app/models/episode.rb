class Episode < ActiveRecord::Base 
  has_many :judges
  has_many :chefs
  has_many :rounds

  def populate_judges(one, two, three)
    if Judge.where(episode_id: self.id).empty?
      Judge.create(name: one, episode_id: self.id)
      Judge.create(name: two, episode_id: self.id)
      Judge.create(name: three, episode_id: self.id)
    end
  end

  def populate_chefs(one, two, three, four)
    if Chef.where(episode_id: self.id).empty?
      Chef.create(name: one, episode_id: self.id)
      Chef.create(name: two, episode_id: self.id)
      Chef.create(name: three, episode_id: self.id)
      Chef.create(name: four, episode_id: self.id)
    end
  end

  def start_round
    if Round.where(episode_id: self.id).empty?
      Round.create(episode_id: self.id, name: "round 1")
      Round.create(episode_id: self.id, name: "round 2")
      Round.create(episode_id: self.id, name: "round 3")
    end
  end
end