class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.decimal :hourly_rate

      t.timestamps
    end
  end
end
