class Costume < ActiveRecord::Base
  validates :name, presence: true
  validates :image, presence: true
  
end