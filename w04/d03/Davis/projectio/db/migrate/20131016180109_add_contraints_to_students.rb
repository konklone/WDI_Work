class AddContraintsToStudents < ActiveRecord::Migration
  def up
  	# :table, :column, :datatype, :contraint 
  	change_column :students, :name, :string, :null => false
  	change_column :students, :project_description, :text, :null => false
  end

  def down
  	change_column :students, :name, :string, :null => true
  	change_column :students, :project_description, :text, :null => true
  end
end
