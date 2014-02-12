require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host:    "localhost",
  username: "ecasilla",
  password: "",
  database: "sandbox"
)

class Clown < ActiveRecord::Base
  belongs_to :clown_car
  validates :name, presence: true
  validate :clown_car_at_capacity

  def clown_clown_car_at_capacity
    if clown_car.present? && clown_clown_car_at_capacity?
      errors.add(:clown_car, "This clown car is full!!!")
  end
  
  def speak
    "Hello, child - my name is #{self.name}"
  end
end

class ClownCar < ActiveRecord::Base
  has_many :clown
  validates :color,:capacity, presence: true

  def at_capcity?
    self.clown.count >= self.capacity  
  end
end

binding.pry