class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task, null: false, unique: true
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end