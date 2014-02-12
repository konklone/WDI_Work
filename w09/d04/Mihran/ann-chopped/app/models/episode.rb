class Episode < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true 
  has_and_belongs_to_many :judges 
  has_many :rounds 
  has_many :chefs 

  validate :round_limit 
  validate :chef_limit, :judge_limit 

private 

  def round_limit 
    if self.rounds.length > 3 
      errors.add(:rounds, "There are only three rounds!")
    end 
  end 

  def chef_limit  
    if self.chefs.length > 4 
      errors.add(:chefs, "There are only four chefs!")
    end 
  end 

  def judge_limit  
    if self.judges.length > 3 
      errors.add(:judges, "There are only three judges!")
    end 
  end 
end 