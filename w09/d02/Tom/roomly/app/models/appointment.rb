class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish, if: Proc.new { |user| user.finish? }

  private

  def start_before_finish
    return unless finish.present? && start.present?
    if finish < start
      errors.add(:start, "Can't finish before you start, human?")
    end
  end
end

