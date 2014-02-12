class RenameColumnType < ActiveRecord::Migration
  def up
  	rename_column :dependencies, :type, :deb_type
  end

  def down
  	rename_column :dependencies, :dep_type, :type
  end
end
