class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name, null: false 
      t.belongs_to :episode 
      t.boolean :winner?, default: false 
    end
  end
end
