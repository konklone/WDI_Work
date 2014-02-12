class CreateDependenciesAndLinkToStudents < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.string :name, null: false
      t.string :type, null: false #API or Library
      t.boolean :is_gem, null: false
      t.string :documentation_link
      t.string :other_link
    end

    add_reference :dependencies, :students #FIXED

  end

  def down
    remove_column :dependency, :student_id  #FIXED
    drop_table :dependencies
  end
end
