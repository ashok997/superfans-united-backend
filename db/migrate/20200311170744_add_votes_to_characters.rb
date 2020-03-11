class AddVotesToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :user_characters, :votes, :integer
  end
end
