class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :room_id
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
