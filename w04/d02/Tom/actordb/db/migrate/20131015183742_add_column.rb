class AddColumn < ActiveRecord::Migration
  def change
    t.birth_date :date
  end
end
