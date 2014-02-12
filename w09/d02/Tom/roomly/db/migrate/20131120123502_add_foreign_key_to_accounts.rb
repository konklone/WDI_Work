class AddForeignKeyToAccounts < ActiveRecord::Migration
  def change
    change_table :accounts do |t|
      t.references :user, index: true
  end
end

def down
    change_table :accounts do |t|
      t.remove :user_id
    end
  end
end
