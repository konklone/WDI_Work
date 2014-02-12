class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text, null: false
      t.date :date
    end
  end
end
