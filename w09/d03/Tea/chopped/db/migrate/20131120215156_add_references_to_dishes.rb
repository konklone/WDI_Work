class AddReferencesToDishes < ActiveRecord::Migration
  def change
    add_reference :dishes, :chef
  end
end
