class CreateActivities < ActiveRecord::Migration "s"
  def change
    create_table :activities do |t|
      t.string :title
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
