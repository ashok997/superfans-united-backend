class RemoveCharacterIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :character_id
  end
end
