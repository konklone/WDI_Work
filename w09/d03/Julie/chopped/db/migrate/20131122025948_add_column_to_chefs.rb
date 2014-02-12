class AddColumnToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :chopped?, :boolean, default: false
  end
end
