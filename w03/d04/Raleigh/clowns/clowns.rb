require "active_record"
require "pry"

# ActiveRecord::Base.logger = Logger.new('./sql.log')

ActiveRecord::Base.establish_connection(
   adapter: "postgresql",
   host: "localhost",
   username: "RaleighD",
   password: "",
   database: "sandbox"
   )

class Clown < ActiveRecord::Base
   belongs_to :clown_car
   # Adds (built-in) validation to require name
   validates :name, presence: true
   # Custom validation
   validate :clown_car_at_capacity

   def speak
      "Hello, child - my name is #{self.name}!"
   end

   def clown_car_at_capacity
      if !self.clown_car.nil? && self.clown_car.at_capacity?
         errors.add(:clown_car, "This clown car is FULL!!!")
      end
   end

end

class ClownCar < ActiveRecord::Base
   has_many :clowns
   # Adds validation to require color and capacity
   validates :color, :capacity, presence: true

   def at_capacity?
      self.capacity <= self.clowns.count
   end

end

# # # puts clowns object
# puts Clown.all
# # # puts all clowns' names
# puts Clown.all.pluck(:name)

binding.pry

# # # puts all clown_cars colors
# puts ClownCar.all.pluck(:color)
