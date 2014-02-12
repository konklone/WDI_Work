class Round < ActiveRecord::Base
  belongs_to :episode
  has_many :chefs
  has_many :dishes
end
