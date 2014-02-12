class DropChefsDishes < ActiveRecord::Migration
  def change
    drop_table :chefs_dishes
  end
end