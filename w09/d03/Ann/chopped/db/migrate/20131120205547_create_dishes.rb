class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.belongs_to :chef 
      t.string :name, null: false 
    end
  end
end
