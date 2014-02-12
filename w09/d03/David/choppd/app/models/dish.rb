class Dish < ActiveRecord::Base
  validates :chef_id, :round_id, presence: true
  # validate :rating_tracker

  belongs_to :chef
  belongs_to :round
  has_many :ratings
  has_many :judges, through: :ratings

  private

  # def rating_tracker
  #   unless self.rating_1.nil? || self.rating_2.nil? || self.rating_3.nil?
  #     if (self.rating_1 < 1 || self.rating_1 > 5) 
  #       errors.add(:rating_1, "Rating must be between 1 and 5")
  #     elsif (self.rating_2 < 1 || self.rating_2 > 5)
  #       errors.add(:rating_2, "Rating must be between 1 and 5")
  #     elsif (self.rating_3 < 1 || self.rating_3 > 5)
  #       errors.add(:rating_3, "Rating must be between 1 and 5") 
  #     end
  #   end
  # end
end