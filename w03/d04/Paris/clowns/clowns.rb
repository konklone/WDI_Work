require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "Paris",
password: "",
database: "sandbox"
  )

class Clown < ActiveRecord::Base
  # class method:
  belongs_to :clown_car

  validates :name, presence: true
  # creating a custom  validator
  validate :clown_car_at_capacity

  def speak
    "Hello, child - my name is #{self.name}."
  end

  def clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
      errors.add(:clown_car, "This clown car is full!")
    end
  end

end


# be sure to camel case
# two colons means class method
# class method:
class ClownCar < ActiveRecord::Base
  # has_many and belongs_to are class methods that provide a way for ActiveRecord to retrieve the relationships defined in the schema.
  has_many :clowns

  validates :color, :capacity, presence: true

  def at_capacity?
    self.capacity <= self.clowns.count 
  end

end

# puts Clown.all.pluck(:name)
puts ClownCar.all.pluck(:color)

binding.pry






