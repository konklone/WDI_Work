class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :chef_id
      t.integer :round_id
      t.integer :rating_1
      t.integer :rating_2
      t.integer :rating_3

      t.timestamps
    end
  end
end
