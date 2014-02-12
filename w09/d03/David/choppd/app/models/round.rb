class Round < ActiveRecord::Base
  validates :episode_id, presence: true
  validate :max_rounds

  belongs_to :episode
  has_many :dishes

  private

  def max_rounds
    unless self.episode_id.nil?
      appointment_count = Round.where("episode_id = #{self.episode_id}").count 
      if appointment_count >= 3
        errors.add(:episode_id, "There are more than 3 rounds associated with this episode")
      end
    end
  end
end