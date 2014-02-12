require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:host => 'localhost',
:username => 'thomasbrennan',
:password => '',
:database => 'sandbox'
)

class Clown < ActiveRecord::Base
  # belongs_to is a class method could be written self.belongs_to
  belongs_to :clown_car
  # validates (plural) are built in validations
  validates :name, presence: true

  # validate is different than validates.  the singular validate is a custom validation
  validate :clown_car_at_capacity?

  def speak
    "Hello, child - my name is #{self.name}"
  end

  # create a custom validate method.  We are constraining the amt of clowns to the set capacity
  def clown_car_at_capacity
    # if both of these conditions are true, we will add and error
    if clown_car.nil? && clown_car_at_capacity?
      errors.add(:clown_car, "This clown car is full!!")
    end
  end
end

class ClownCar < ActiveRecord::Base
  # has_many also a class method
  has_many :clowns
  validates :color, presence: true
  validates :capacity, presence: true

  def at_capacity?
    # the below is a boolean indicated by ? in method name
    self.clowns.count >= self.capacity
  end
end

puts Clown.all.name
puts ClownCar.all.pluck(:color)

binding.pry
