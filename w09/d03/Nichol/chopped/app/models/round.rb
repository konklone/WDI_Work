class Round < ActiveRecord::Base
  belongs_to :episode

  after_create :rollback_unless_episode_valid

  private

  def rollback_unless_episode_valid
    unless episode.valid?
      raise ActiveRecord::Rollback, "Too many rounds!"
    end
  end
end
