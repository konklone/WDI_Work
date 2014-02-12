class Appointment < ActiveRecord::Base
  validates :user_id, presence: true
  validates :room_id, presence: true
  validates :start, presence: true
  validates :finish, presence: true
  validate :start_before_finish # if: Proc.new { |user| user.finish? }
  validate :room_is_already_in_use

  def start_before_finish
    #return unless finish.present? && start.present?
    #errors.add(:start, "No, Start before Finish!") if start > finish

    begin
      errors.add(:start, "No, Start before Finish!") if start > finish
    rescue NoMethodError
      errors.add(:start, "You have something is nil")
    end

  end

  def room_is_already_in_use
    
    For all appointments with the same room_id,
      check that the start time and finish times do not overlap
  

  end

end
