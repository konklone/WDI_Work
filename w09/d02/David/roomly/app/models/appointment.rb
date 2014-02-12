class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish#, if: Proc.new { |user| user.finish? }
  validate :room_overlap
  validate :room_fee

  private

  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN!?!?!?!?!?!?!?")
    end
  end

  def room_overlap
    return unless finish.present? && start.present? && room_id.present?
    Appointment.where("room_id = #{self.room_id}").each do |appointment|
      range = appointment.start..appointment.finish
      if range.cover?(self.start) || range.cover?(self.finish)
         errors.add(:room_id, "Room times overlap")
      end
    end
  end

  def room_fee
    return unless finish.present? && start.present? && room_id.present? && user_id.present? && room_id.present?
    user = User.find(self.user_id)
    room = Room.find(self.room_id)
    room_rate = room.hourly_rate
    user_balance = user.account.balance
    start = (self.start.to_i/(60 * 60)).round
    finish = (self.finish.to_i/(60 * 60)).round
    time_range = finish - start
    if (time_range * room_rate) > user_balance
      errors.add(:user_id, "User does not have enough $$$")
    end
  end
end