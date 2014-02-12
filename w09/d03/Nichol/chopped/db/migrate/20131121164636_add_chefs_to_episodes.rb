class AddChefsToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :chef_id, :integer
  end
end
