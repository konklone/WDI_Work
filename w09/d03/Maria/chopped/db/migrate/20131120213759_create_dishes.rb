class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name, null: false

      # for simplicity's sake
      t.integer :rating_one
      t.integer :rating_two
      t.integer :rating_three

      t.references :chefs, null: false, index: true

      t.timestamps
    end
  end
end
