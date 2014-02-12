class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish#, if: Proc.new { |user| user.finish? }
  #validate :cannot_make_two_appts_for_same_room
  

  private

  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN!?!?!?!?!?!?!?")
    end
  end

  def conflict
   appointments.each do |appointment|
    if self.room_id && self.start.time == appointment.room_id && appointment.start.time
      errors.add(:start, "This time is already taken, pick another time")
    end
  end

      #iterate over appointments.all and if it matches ....
  end
  
end




# def cannot_make_two_appts_for_same_room
  #   Appointment.Where(:room_id)

  # end