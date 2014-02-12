class Chefs < ActiveRecord::Migration
  def change
    create_table :chefs do |c|
      c.string :name, null: false
      c.belongs_to :rounds 
      c.references :dishes 
    end
  end
end
