class AddAliveToCitizens < ActiveRecord::Migration
  def change
    add_column :citizens, :alive, :boolean, default: true
  end
end
