class Chef < ActiveRecord::Base
  validates :name, :episode_id, presence: true
  has_many :dishes
  has_many :rounds, through: :chefs_rounds


  def make_dish(name, round_id) 
    if Dish.where(chef_id: self.id, round_id: round_id).empty?
     Dish.create(name: name, chef_id: self.id, round_id: round_id)
    else
      false
   end
  end
end

