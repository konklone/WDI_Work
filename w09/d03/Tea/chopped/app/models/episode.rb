class Episode < ActiveRecord::Base
  has_many :rounds
  has_many :chefs
  has_many :judges
end
