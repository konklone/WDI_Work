class AddGameIdToCitizens < ActiveRecord::Migration
  def change
    add_column :citizens, :game_id, :integer
  end
end
