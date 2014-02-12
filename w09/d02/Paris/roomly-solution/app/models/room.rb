class Room < ActiveRecord::Base
  validates :name, :hourly_rate, presence: true

  has_many :appointments

  def available?(appointment)
    # all appointments for this room
    appointments
    # the below is sql. could be:
    # .where("(#{appointment.start}, #{appointment.finish}) OVERLAPS (start, finish)")
    # looks for any appts with this room idea with these start finish times. .none? will return a boolean. Either there are no appts that overlap or there are appts that overlap.
      .where("(?, ?) OVERLAPS (start, finish)", appointment.start, appointment.finish)
      .none?
  end
end
