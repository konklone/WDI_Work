class AddUserIdToAccounts < ActiveRecord::Migration
  def change
    add_reference :accounts, :user

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
