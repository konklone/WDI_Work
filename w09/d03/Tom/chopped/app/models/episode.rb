class Episode < ActiveRecord::Base
 validates :name, presence: true
 validates :rounds, numericality: { less_than: 4 }
 has_many :rounds
end