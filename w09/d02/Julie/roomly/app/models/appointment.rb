class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish
  validate :check_for_overlap


  def start_before_finish
    return unless finish.present? && start.present?
     if self.start > self.finish
      errors.add(:start, "Can't finish before you start, human!")
    end
  end


  def check_for_overlap

    #binding.pry
    Appointment.where(room_id: self.room_id).each do |appointment|
      if ((appointment.finish > self.start && appointment.start < self.start) || (appointment.start < self.finish && appointment.finish > self.end)) 
        errors.add(:room_id, "There is another room in use")
      end
    end

  end

end
