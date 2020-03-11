class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :thumbnail
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
