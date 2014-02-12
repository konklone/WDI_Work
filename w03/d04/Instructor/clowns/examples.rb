require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "wdi",
  :password => "",
  :database => "sandbox"
)

class Clown < ActiveRecord::Base
  # Associations
  belongs_to :clown_car

  # Validations
  validates :name, presence: true, uniqueness: true
  validate :clown_car_capacity

  def clown_car_capacity
    if clown_car.present? && clown_car.at_capacity?
      errors.add(:clown_car, "This clown car is full!")
    end
  end
end

class ClownCar < ActiveRecord::Base
  # Associations
  has_many :clowns

  # Validations
  validates :color, :capacity, presence: true

  def at_capacity?
    clowns.count == capacity
  end
end

binding.pry