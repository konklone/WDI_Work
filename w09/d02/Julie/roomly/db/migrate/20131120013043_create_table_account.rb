class CreateTableAccount < ActiveRecord::Migration
  def change
      create_table :accounts do |t|
      t.integer :balance
      t.integer :user_id
    end

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
