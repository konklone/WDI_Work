class AddStudents < ActiveRecord::Migration
  def up
    create_table :students do |x|
      x.string :name
      x.text :project_description
      x.string :github_link
    end
  end
  def down
    drop_table :students
  end
end
