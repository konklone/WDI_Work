require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "rtaff2012",
	:password => "",
	:database => "sandbox"
	)

#puts all the clowns to the terminal using ActiveRecord
class Clown < ActiveRecord::Base

belongs_to :clown_car


validates :name, presence: true

def speak
	"Hello, child - my name is #{self.name}"

end

def clown_car_at_capacity
	if !self.clown_car.nil? && self.clown_car.at_capacity
		errors.add(:clown_car, "This clown car is full!")
		end
	end
end


puts Clown.all


#put all of the clown-car colors to the terminal

class ClownCar < ActiveRecord::Base	
has_many :clowns

validates :color, :capacity, presence: true
validate :clown_car_at_capacity

def at_capacity?
self.clowns.count >= self.capacity
# if 
# 	self.capacity = self.clowns.count
# 	puts "Still room left!"

# else
# 	puts "We're all full!"
# end

	end
end

puts ClownCar.all.pluck(:color)
binding.pry