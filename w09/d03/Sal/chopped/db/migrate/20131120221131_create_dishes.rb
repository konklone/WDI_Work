class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.belongs_to :chef
      t.belongs_to :round
    end
  end
end
