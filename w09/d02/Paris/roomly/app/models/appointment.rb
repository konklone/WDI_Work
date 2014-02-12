class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true

  # this will only run if the value of the proc returns true
  # a Proc is like an anonymous block
  validate :start_before_finish, if: Proc.new {|user| user.finish?} 
  # validate :have_different_rooms, if: Proc.new {|user| user.start?}
  
  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN???!!!!")
    end
  end

  def have_different_rooms(appointment1, appointment2)
    if appointment1.room_id == appointment2.room_id && appointment1.start == appointment2.start
      errors.add(:start, "This room is taken, HUMAN?!?!?!")
    end
  end

  def check_for_funds
    return unless finish.present? && start.present?
    if account.balance < room.hourly_rate * (start - finish)
      errors.add(:user_id, "Get some money....HUMAN?!?!?!")
    end
  end

end
