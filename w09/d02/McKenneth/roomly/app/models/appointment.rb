class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  # custom validator
  validate :start_before_finish, if: Proc.new{|user| user.finish? && user.start?}
  validate :next_appointment, after: :finish, if: Proc.new{|user| user.finish? && user.start?}

  def start_before_finish
    if finish < start
      # return unless finish.present? && start.present?
    errors.add(:start, "Erroneous. You cannot finish before you start, Silly Boy")
    end
  end

  def next_appointment
    app = Appointment.where(room_id: self.room_id)
    for apps in app
      if (self.start..self.finish).overlaps?(apps.start..apps.finish)
        errors.add(:start, "Can't overlap appointments")
      end
    end
  end
end
