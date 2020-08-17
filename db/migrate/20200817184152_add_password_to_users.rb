class AddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
    rename_column :users, :name, :username
  end
end
