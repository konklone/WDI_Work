require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new('./sql.log')

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "wdi",
  password: "",
  database: "sandbox"
)

# `puts` all the clowns to the terminal using 
# ActiveRecord

class Clown < ActiveRecord::Base
  belongs_to :clown_car

  validates :name, presence: true
  validate :clown_car_at_capacity

  def speak
    "Hello, child - my name is #{self.name}"
  end

  def clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
      errors.add(:clown_car, "This clown car is full!!!")
    end
  end
end

# put all colors of clown cars to terminal

# Add validation to require presence of color and capacity

class ClownCar < ActiveRecord::Base
  has_many :clowns

  validates :color, :capacity, presence: true

  def at_capacity?
    self.clowns.count >= self.capacity 
  end
end


# Pozo -> Green Car
# Dozo -> Red car

binding.pry