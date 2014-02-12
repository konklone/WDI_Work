class Episode < ActiveRecord::Base
  validate :too_many_rounds
  validate :too_many_chefs

  has_many :rounds
  has_many :chefs

  private

  #logic is if condition then is invalid
  def too_many_rounds
    if self.rounds.count > 3
      errors.add(:rounds, "there are too many rounds")
    end
  end

  def too_many_chefs
    if self.chefs.count > 4
      errors.add(:chefs, "there are too many chefs")
    end
  end

end
