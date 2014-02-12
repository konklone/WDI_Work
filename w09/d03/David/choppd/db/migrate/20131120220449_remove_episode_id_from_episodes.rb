class RemoveEpisodeIdFromEpisodes < ActiveRecord::Migration
  def change
    remove_column :episodes, :episode_id
  end
end
