class Rating < ActiveRecord::Base
  validates :judge_id, :dish_id, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 1 }, if: Proc.new { |dish| dish.score }
  validates :score, numericality: { less_than_or_equal_to: 5 }, if: Proc.new { |dish| dish.score }
  validate :rating_uniqueness

  belongs_to :judge
  belongs_to :dish

  def rating_uniqueness
    #binding.pry
    unless self.judge_id.nil? || self.dish_id.nil?
      last_rating = Rating.where("judge_id = #{self.judge_id} AND dish_id = #{self.dish_id}")
      if last_rating.count != 0
        errors.add(:dish_id, "A judge can only rate 1 dish")
      end
    end
  end
end