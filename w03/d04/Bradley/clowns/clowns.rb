require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "bradpuder",
  :password => "",
  :database => "sandbox"
)

class Clown < ActiveRecord::Base
  belongs_to :clown_car

  validates :name, presence: true

  validate :clown_car_at_capacity

  def speak
    "Hello, child - my name is #{self.name}."
  end

  def clown_car_at_capacity
    if clown_car.present? && clown_car.at_capacity?
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

#Pozo -> Green Car #Dozo -> Red Car

binding.pry