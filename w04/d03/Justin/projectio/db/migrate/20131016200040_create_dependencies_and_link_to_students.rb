class CreateDependenciesAndLinkToStudents < ActiveRecord::Migration
  def up
    create_table :dependencies do |t|
    	t.string :name, null: false
    	t.string :type, null: false
    	t.boolean :is_gem, null: false
    	t.string :documentation_url
    	t.string :other_url
    end

    add_reference :students, :dependencies

  end

  def down
  	remove_column :students, :dependencies_id
  	drop table :dependencies
  end
end
