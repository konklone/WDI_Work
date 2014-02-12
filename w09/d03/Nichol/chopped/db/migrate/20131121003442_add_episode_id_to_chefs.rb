class AddEpisodeIdToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :episode_id, :integer
  end
end