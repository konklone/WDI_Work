class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish #if: Proc.new { |user| user.finish? }
  validate :room_overlap

  def room_overlap
    if (Appointment.find_by(room_id: self.room_id)).include != nil
      ##if that array contains an entry where the time overlaps##
      errors.add(:room_overlap, "Can't have overlapping appointments!")
    end
  end

  def start_before_finish
    # IE stop running this method - don't go any further!!!
    return nil unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't start after finish!")
    end
  end
end
