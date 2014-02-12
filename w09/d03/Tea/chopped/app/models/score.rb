class Score < ActiveRecord::Base
  validates_numericality_of :score, less_than: 6
  validates_numericality_of :score, greater_than: 0

  belongs_to :dish
  belongs_to :judge
end
