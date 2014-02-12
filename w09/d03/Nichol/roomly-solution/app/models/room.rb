class Room < ActiveRecord::Base
  validates :name, :hourly_rate, presence: true

  has_many :appointments

  def available?(appointment)
    appointments
      .where("(?, ?) OVERLAPS (start, finish)", appointment.start, appointment.finish)
      .none?
  end
end
