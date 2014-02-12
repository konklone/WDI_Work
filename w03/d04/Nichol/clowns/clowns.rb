require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "nichol",
    password: "",
    database: "sandbox_db"
)

class Clown < ActiveRecord::Base
    belongs_to :clown_car

    validates :name, presence: true
    validate :clown_car_at_capacity

    def speak
        "Hello, child - my name is #{self.name}"
    end

    def get_in_the_car(car)
        car.clowns << self
        self.speak + " and I'm in the #{car[:color]} car"
    end


    def clown_car_at_capacity
        if !self.clown_car.nil? && self.clown_car.at_capacity?
            errors.add(:clown_car, "this clown car is full!")
        end
        #binding.pry
    end



end

class ClownCar < ActiveRecord::Base
    has_many :clowns

    validates :color, :capacity, presence: true
    
    def at_capacity?
        return self.capacity <= self.clowns.count   
    end


end

puts Clown.all

red = "red"

#where reutrns array
Clown.where(name: "Bozo")
ClownCar.where(color: red)

#find_by returns object

blue_car = ClownCar.find_by(color: "blue")
green_car = ClownCar.find_by(color: "green")
red_car = ClownCar.find_by(color: "Red")

pozo = Clown.find_by(name: "Pozo")
dozo = Clown.find_by(name: "Dozo")
bozo = Clown.find_by(name: "Bozo")

# green_car.clowns.append(pozo)
# red_car.clowns.append(dozo)

# ClownCar.all.each do |x|
#     puts x[:color]
# end

binding.pry