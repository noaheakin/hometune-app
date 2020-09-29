class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.text :bio
      t.integer :popularity
      t.string :img_url

      t.timestamps
    end
  end
end
