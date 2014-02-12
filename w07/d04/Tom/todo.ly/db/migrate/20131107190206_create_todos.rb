class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :tasks, :null => false
      t.boolean :completed, :default => false

      t.timestamp
    end
  end
end
