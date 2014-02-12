class AddTimestampsToDogs < ActiveRecord::Migration
  def up
    change_table :dogs do |t|
      t.timestamps
  end

  def down
    remove_column :dogs, :created_at
    remove_column :dogs, :updated_at
  end
end
end

