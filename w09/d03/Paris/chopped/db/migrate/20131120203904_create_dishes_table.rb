class CreateDishesTable < ActiveRecord::Migration
  def change
    create_table :dishes_tables do |t|
      t.string :name
      t.string :type
      t.integer :score_id

    end
  end
end
