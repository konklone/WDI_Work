require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "MihranAbrahamian",
  password: "",
  database: "sandbox"
  )

class Clown < ActiveRecord::Base
  belongs_to :clown_car 
  validates :name, presence: true
  validate :clown_car_at_capacity

def speak
  "Hello child - my name is #{self.name}"
end


def clown_car_at_capacity
  if !self.clown_car.nil? && !self.clown_car.at_capacity?
    errors.add(:clown_car, "This clown car is full!!!")
  end
end

end

class ClownCar < ActiveRecord::Base
    has_many :clowns
    validates :color, :capacity, presence: true

def at_capacity?
   self.clowns.count >= self.capacity 
end


end

binding.pry