class Round < ActiveRecord::Base
  validates :category, presence: true
  has_and_belongs_to_many :chefs 
  belongs_to :episode 

  # validate :elimination 

private 

  def eliminiation
  end 

end 