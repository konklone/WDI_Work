class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :task
      t.boolean :completed

      t.timestamps
    end
  end
end
