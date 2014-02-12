require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql", 
	:host => "localhost", 
	:username => "sal", 
	:password => "", 
	:database => "sandbox"
)

class Clown < ActiveRecord::Base
	belongs_to :clown_car #class method that helps active record understand the relationship between entities
	validates :name, presence: true
	validate :clown_car_at_capacity

	def speak
		"Hello, child - my name is #{self.name}"
	end

	def clown_car_at_capacity
		if !self.clown_car.nil? && self.clown_car.at_capacity?
			errors.add(:clown_car, "This clown car is full!!")
		end
	end
end


class ClownCar < ActiveRecord::Base
	has_many :clowns

	def at_capacity?
		self.clowns.count >= self.capacity
	end

	validates :color, presence: true
	validates :capacity, presence: true 
end




puts Clown.all.each # prints all clowns
puts ClownCar.pluck(:color) #prints just clown car colors

binding.pry