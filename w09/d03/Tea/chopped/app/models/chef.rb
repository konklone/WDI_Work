class Chef < ActiveRecord::Base
  belongs_to :episode
  has_and_belongs_to_many :rounds
  has_many :dishes

  after_create :rollback_if_maxed

  def cook(name, round_id)
    if (Dish.where(chef_id: self.id, round)).count >= 5
      food = Dish.new(name: name, chef_id: self.id, round_id: round_id)
    food.save
  end

  private 

  def rollback_if_maxed()
    if (Chef.all).count >= 5
      raise ActiveRecord::Rollback, "Too many chefs in the kitchen!"
    end
  end
end
