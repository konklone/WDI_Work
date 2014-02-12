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

class Car < ActiveRecord::Base
  has_many :rentals
  has_many :customers, :through => :rentals

  validates :make, :price_per_day, presence: true

  def self.available_today
    includes(:rentals)
    .where("start_date > 'today' OR rentals.id is null")
    .references(:rentals)
  end

  def available?(start_date, end_date)
    # does this car have a reserved rental for the dates in question?
    rentals.where(" (? , ?) OVERLAPS (rentals.start_date, rentals.end_date) ", start_date, end_date).none?
  end
end

class Customer < ActiveRecord::Base
  has_many :rentals
  has_many :cars, :through => :rentals

  validates :name, presence: true
  validates :email, uniqueness: { allow_nil: true }
end

class Rental < ActiveRecord::Base
  belongs_to :car
  belongs_to :customer

  validates :customer, :car, :start_date, :end_date, presence: true
  validate :car_available?

  def cost
    (rental_length * car.price_per_day).to_f
  end

  def rental_length
    end_date - start_date
  end

  def car_available?
    unless car.available?(start_date, end_date)
      errors.add(:start_date, "Not available!")
    end
  end
end

binding.pry