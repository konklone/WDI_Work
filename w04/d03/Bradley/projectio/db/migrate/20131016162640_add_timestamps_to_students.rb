class AddTimestampsToStudents < ActiveRecord::Migration
  def up
    change_table :students do |t|
      t.timestamp
    end
  end

  def down
  end
end
