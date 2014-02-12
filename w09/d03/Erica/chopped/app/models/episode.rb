class Episode < ActiveRecord::Base
  validates :name, presence: true

  has_many :rounds
end
