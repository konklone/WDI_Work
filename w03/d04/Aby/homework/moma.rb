require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	host: "localhost",
	username: "ezpawn",
	password: "1234",
	database: "sandbox"
)
class Painting < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true


class Artist < ActiveRecord::Base
	has_many :paintings

	validates :color, :capacity, presence: true

	def artist_at_capacity
		if artist.present? && arist_at_capacity?
	  	  errors.add(:artist, "This artist can make no more paintings!!")
	end
  end
end

puts Painting.all


end

binding.pry
