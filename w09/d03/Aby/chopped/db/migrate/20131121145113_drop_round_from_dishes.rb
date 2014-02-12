class DropRoundFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :round
  end
end