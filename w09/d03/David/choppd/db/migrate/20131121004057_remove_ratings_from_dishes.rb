class RemoveRatingsFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :rating_1
    remove_column :dishes, :rating_2
    remove_column :dishes, :rating_3
  end
end
