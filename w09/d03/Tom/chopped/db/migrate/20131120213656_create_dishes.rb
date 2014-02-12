class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.references :chef, index: true
      t.references :round, index: true

      t.timestamps
    end
  end
end
