class Judge < ActiveRecord::Base
  belongs_to :episode
  has_many :scores

  def score(rating, dishName)
    dish = Dish.find_by(name: dishName)
    score = Score.new(score: rating, dish_id: dish.id, judge_id: self.id)
    if rating < 6 && rating > 0
      score.save
    else
      raise ArgumentError, "Score must be between 1 & 2"
    end
  end
end
