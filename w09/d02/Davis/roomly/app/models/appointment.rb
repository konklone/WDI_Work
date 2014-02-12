class Appointment < ActiveRecord::Base
  # Validation Chain
    # 1. presence user_id
    # 2. presence room_id
    # 3. start
    # 4. finish
    # 5. custom

  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish#, if: Proc.new { |user| user.finish? }

  private

  def start_before_finish
    return unless finish.present? && start.present?
    
    # mostly linked to associated attribute
    errors.add(:start, "Can't finish before you start") if self.finish < self.start
  end
end
