class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish, if: Proc.new { |user| user.start && user.finish }

  belongs_to :user
  belongs_to :room

  def cost
    duration * room.hourly_rate
  end

  def duration
    ( (finish - start) / 3600 ).round
  end

  private

  def start_before_finish
    if start >= finish
      errors.add(:start, "Starts after it ends!")
    end
  end
end


