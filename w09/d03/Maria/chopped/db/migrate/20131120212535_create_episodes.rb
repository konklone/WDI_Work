class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name, null: false
    
      t.timestamps
    end
  end
end
