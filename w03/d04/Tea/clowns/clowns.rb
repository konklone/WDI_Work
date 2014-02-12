require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "T-Virus",
  password: "",
  database: "sandbox"
)

class Clown < ActiveRecord::Base
  belongs_to :clown_car

  # validates uses pre-included validations. Like presence.
  validates :name, presence: true

  # validate uses CUSTOM validations. 
  # puts instance method with same name as the function
  validate :clown_car_at_capacity

  def speak
    "Hi. I'm #{self.name}. We all float down here"
  end

  def clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
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
