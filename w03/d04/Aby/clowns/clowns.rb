require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	host: "localhost",
	username: "ezpawn",
	password: "1234",
	database: "sandbox"
)
class Clown < ActiveRecord::Base
  belongs_to :clown_car

  validates :name, presence: true

  def speak
  	"Hello, child - my name is #{self.name}"
end

class ClownCar < ActiveRecord::Base
	has_many :clowns

	validates :color, :capacity, presence: true

	def clown_car_at_capacity
		if clown_car.present? && clown_car_at_capacity?
	  	  errors.add(:clown_car, "This clown car is full!!")
	end
  end
end

puts Clown.all


end

binding.pry
