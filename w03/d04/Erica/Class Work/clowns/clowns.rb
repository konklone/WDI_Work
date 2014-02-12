require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host:     "localhost",
  username: "evobersi",
  password:     "",
  database: "sandbox"
  )

#name the class Camelcase style in the singular form of our SQL table

class Clown < ActiveRecord::Base
  belongs_to :clown_car #  a class method , self.belongs_to works as well / always singular 
   validates :name, presence: true # built-in validations
   validate :clown_car_at_capacity   # custom validations

   def speak
    "Hello, child - my name is #{self.name}"
   end

   # a custom method to express a custom restraint on the model
   def clown_car_at_capacity
    if clown_car.present? && clown_car.at_capacity? 
      errors.add(:clown_car, "This car is full!!!!!")
   end
 end
end

 
# put all colors of Clown Cars to terminal 
# add validation to require presence of color and capacity
class ClownCar < ActiveRecord::Base
  has_many :clowns # automatically retrieves from the database any associated clowns / always plural 

  validates :color, :capacity, presence: true

validates :name, presence: true
  def at_capacity?
   if self.at_capacity >= self.clowns.count
    # if it is at capacity it will return true, if not it will return false
  end
  end
end


 

binding.pry

# puts Clown.all.each
# puts ClownCar.all.pluck(:color)
# # pluck method 


# -- Pozo -- Green Car
# -- Bozo -- Red Car

# Clown.find_by(name: "pozo")
# Clown.find_by(name: "dozo")
# ClownCar.find_by(color: "green")
# ClownCar.find_by(color: "red")
# green_car.clowns = 
# []
# green_car.clowns.append(pozo)
# red_car.clowns << dozo

# the instance of the clown car class "red car" representing
# a single record in our Clowns table..

# it goes to the clowns table and returns to us an array 
# full of clown instances. those clowns being the associated
# clowns via clown car id

# we can use the .clown method because we set up the relationship
# first make ur schema then tell AR about it. 

