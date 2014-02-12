class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :name
      t.references :episode, index: true

      t.timestamps
    end
  end
end
