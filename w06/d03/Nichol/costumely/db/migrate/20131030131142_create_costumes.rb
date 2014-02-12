class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
