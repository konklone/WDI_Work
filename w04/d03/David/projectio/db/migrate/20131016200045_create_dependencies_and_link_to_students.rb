class CreateDependenciesAndLinkToStudents < ActiveRecord::Migration
  def up
    create_table :dependencies do |t|
      t.string :name, null: false
      t.string :type, null: false #"API" or "Library"
      t.boolean :is_gem, null:false
      t.string :documentation_link
      t.string :other_link
    end
  
    add_reference :students, :dependencies 

  end

  def down
    remove_columg :students, :dependencies_id
    drop_table :dependencies
  end
end
