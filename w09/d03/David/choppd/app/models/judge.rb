class Judge < ActiveRecord::Base

  has_many :ratings
  has_many :dishes, through: :ratings

  def rate(dish)
    score = (1..5).to_a.sample
    rating = Rating.create(judge: self, dish: dish, score: score)
  end
end