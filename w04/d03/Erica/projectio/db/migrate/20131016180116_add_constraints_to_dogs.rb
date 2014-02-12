class AddConstraintsToDogs < ActiveRecord::Migration
  def up
    change_column :dogs, :name,:string, :null => false
    change_column :dogs, :breed,:string, :null => false
  end

  def down
    change_column :dogs, :name,:string, :null => true
    change_column :dogs, :breed,:string, :null => true
  end

end
