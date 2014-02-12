class Round < ActiveRecord::Base
 belongs_to :episode
 validates :name, :episode_id, presence: true
end