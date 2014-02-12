require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "brittlewis",
  password: "",
  database: "sandbox"
)

class Clown < ActiveRecord::Base
  belongs_to :clown_car
  
  validates :name, presence: true
  validate :clown_car_at_capacity

  def @clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
      errors.add(:clown_car, "This clown car is full, yo!!!!!!!!!!")
    end
  end

  def speak
    "Hello child - my name is #{self.name}"
  end
end

class ClownCar < ActiveRecord::Base
  has_many :clowns

  validates :color, :capacity, presence: true

  def at_capacity?
    self.clowns.count >= self.capacity
  end

end

clowns = Clown.all

clowns.pluck(:name)

clown_cars = ClownCar.all

ClownCar.all.pluck(:color)
ClownCar.where(color: "Red")

binding.pry
