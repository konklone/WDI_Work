class AddEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |e|
      e.string :name
      e.references :rounds 
    end
  end
end
