class CreateRound < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :episode
    end
  end
end
