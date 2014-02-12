require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	host: "localhost",
	usernmae: "daviskoh",
	password: "",
	database: "sandbox"
)

class Clown < ActiveRecord::Base
	self.belongs_to :clown_car

	# essentially replace Postgres error msg w/ 'false' for readability
	validates :name, presence: true

	# conceptually, clowncar is getting updated
	# HOWEVER in schema, clown holds info (look at clowncar attributes)
		# custom validation below
	validate :clow_car_at_capacity

	def speak
		"Hello, child - my name is #{self.name}"
	end

	def clown_car_at_capacity
		if self.clown_car.present? && self.clown_car.at_capacity?
			error.add(:clown_car, "This clown car is full!!!")
		end
	end

end

# NOTE: AR will turn into snake_case, then pluralize
class ClownCar < ActiveRecord::Base
	self.has_many :clowns

	validates :color, :capacity, presence: true

	def at_capacity?
		self.clowns.count >= self.capacity
	end
end

binding.pry
