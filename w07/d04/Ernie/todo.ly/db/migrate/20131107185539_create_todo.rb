class CreateTodo < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.boolean :completed, default: false

      t.timestamp
    end
  end
end
