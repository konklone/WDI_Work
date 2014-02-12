class Appointment < ActiveRecord::Base
  validates :user_id, :start, :finish, presence: true
  validates :room_id, presence: true 
  validate :start_before_finish#, if: Proc.new { |user| user.finish? }
  validate :overlap  

  private

  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN!?!?!?!?!?!?!?")
    end
  end


  def overlap 
    (Appointment.where(room_id: self.room_id)).each do |appointment|  
      range = appointment.start...appointment.finish 
        if range.cover?(start) || range.cover?(finish)
          errors.add(:start, "OVERLAP!")  
        end 
    end 
  end      

end
