class AddAccountsTable < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :users 
      t.integer :balance 

      reversible do |dir|
      dir.up do 
        execute <<-SQL
        ALTER TABLE accounts
        ADD CONSTRAINT fk_users
        FOREIGN KEY (user_id)
        REFERENCES users(id)
      SQL
      end 
    end 
  end
end
end 
