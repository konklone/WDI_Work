class CreateEpisodeTable < ActiveRecord::Migration
  def change
    create_table :episodes_tables do |t|
      t.integer :judge_id
      t.integer :chef_id
      t.integer :dish_id
      t.integer :round_id
      t.string :winner
      t.timestamps
    end
  end
end
