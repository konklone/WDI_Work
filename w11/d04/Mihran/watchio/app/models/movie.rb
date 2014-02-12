class Movie < ActiveRecord::Base
  validates :title, :poster, :plot, presence: true
end