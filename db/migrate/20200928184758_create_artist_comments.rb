class CreateArtistComments < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_comments do |t|
      t.integer :artist_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
