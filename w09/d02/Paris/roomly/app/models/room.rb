class Room < ActiveRecord::Base
  validates :name, :hourly_rate, presence: true



end
