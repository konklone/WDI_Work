require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "DtotheFP",
  password: "",
  database: "sandbox"
  )

class Clown < ActiveRecord::Base
  #class method -- says there is a column clown_car_id in the clowns table
  #associates a mthod with the ClownCar class
  belongs_to :clown_car
  validates :name, presence: true

  #create an instance method with the same name as the symbol
  validate :clown_car_at_capacity

  def speak
    "Hello, child - my name is #{self.name}"
  end


  def clown_car_at_capacity
    if !self.clown_car.nil? && self.clown_car.at_capacity?
      errors.add(:clown_car, "this clown car is full!!!!")
  end
end
end


class ClownCar < ActiveRecord::Base
  #associates a mthod with the Clown class
  has_many :clowns

  validates :color, :capacity, presence: true

  def at_capacity?
    self.clowns.count >= self.capacity
  endcd

end

binding.pry
