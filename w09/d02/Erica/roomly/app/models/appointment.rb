class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish

  def start_before_finish
    return unless finish.present? && start.present?
    if self.start > self.finish
      errors.add(:start, "Not a valid entry. Pick a start time that is earlier than the finish time.")
    end
  end 

  def time_conflict(appointment)
    @appointment.each do |apt|
      if self.room_id && self.start == apt.room_id && apt.start 
        errors.add(:start, "There is a time conflict. Pick another time, please!")
      end
    end
  end
end