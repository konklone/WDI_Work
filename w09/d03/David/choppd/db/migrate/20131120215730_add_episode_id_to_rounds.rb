class AddEpisodeIdToRounds < ActiveRecord::Migration
  def change

    add_column :rounds, :episode_id, :integer
  end
end
