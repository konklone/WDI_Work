class AddConstraints < ActiveRecord::Migration
  def up
      change_column :students, :name, :string, :null => false
  end
end
