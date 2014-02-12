class AddTableAccount < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.integer :balance
      t.timestamps
    end
  end
end
