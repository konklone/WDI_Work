class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish#, if: Proc.new { |user| user.finish? }
  validate :room_overlap

  private

  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN!?!?!?!?!?!?!?")
    end
  end

  def room_overlap
    this_room = self
    same_room = Appointment.where(room_id: this_room.room_id)
    if same_room
      same_room.each do |appt|
        if ((appt.finish > this_room.start &&  appt.start < this_room.finish) ||
          (appt.start < this_room.finish && appt.finish > this_room.finish))
          errors.add(:room_id, "Someone's taken that room!")
        end
      end
    end
  end
end
