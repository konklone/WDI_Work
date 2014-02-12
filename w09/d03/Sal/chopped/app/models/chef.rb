class Chef < ActiveRecord::Base
  validates :name, :episode_id, presence: true 
  has_many :dishes

  def make_dish(name, round_id)
    Dish.create(name: name, round_id: round_id, chef_id: self.id)
  end
end