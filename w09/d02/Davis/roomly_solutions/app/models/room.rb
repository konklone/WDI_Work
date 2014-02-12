class Room < ActiveRecord::Base
  validates :name, :hourly_rate, presence: true

  has_many :appointments

  def available?(appointment)
    appointments
      # sql
      # 1 by 1 "sanitizes" for any unwarranted sql commands
      .where("(?, ?) OVERLAPS (start, finish)", appointment.start, appointment.finish)
      .none? #there are no appointsments that overlap
             #or there are
  end
end
