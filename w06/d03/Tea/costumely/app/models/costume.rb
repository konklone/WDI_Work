class Costume < ActiveRecord::Base
  validates :name, :image, presence: true
  has_many :notes
end