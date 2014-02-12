class CreateDepenciesAndLinkToStudents < ActiveRecord::Migration
  def change
    create_table :depencies do |t|
      t.string :name, null: false
      t.string :type, null: false # "API" or "library"
      t.boolean :is_gem, null: false
      t.string :documentation_link
      t.string :other_link
    end
  
  add_reference :dogs, :dependencies #links databases together!

  def down
  remove_column :students, :depencies_id
  drop_table :dependencies 
  end
end
end
