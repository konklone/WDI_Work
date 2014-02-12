class Dish < ActiveRecord::Base
  validates :chef_id, presence: true 
  validates :round_id, presence: true 
  validates :name, presence: true 

  belongs_to :chef
  belongs_to :round
  has_many :scores
end
