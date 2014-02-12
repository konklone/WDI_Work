class Round < ActiveRecord::Base
  validates :category, presence: true

  belongs_to :episode
end
