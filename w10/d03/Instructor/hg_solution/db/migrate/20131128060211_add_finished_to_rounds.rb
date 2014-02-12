class AddFinishedToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :finished, :boolean
  end
end
