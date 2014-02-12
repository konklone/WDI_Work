require 'active_record'
require 'pry'



ActiveRecord::Base.establish_connection(
  adapter: "postgresql", 
  host: "localhost",
  username: "Julie",
  password: "",
  database: "sandbox"
  )


class Clown < ActiveRecord::Base
  belongs_to :clown_car

 # built in validation 
  validates :name, presence: true
#custom validation
  validate :clown_car_at_capacity

  def clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
      errors.add(:clown_car, "This clown car is full")
  end]p

  def speak
    "Hello, child - my name is #{self.name}"
  end
end

# puts Clown.all.pluck(:name)


class ClownCar < ActiveRecord::Base
  has_many :clowns
  def at_capacity?
    if self.clowns.count >= self.capacity
    end
  end
  validates :color, :capacity, presence: true

end

binding.pry
# blue_car.clowns.append Pozo
# mauve_car.clowns.append Dozo

# puts blue_car
# puts mauve_car

