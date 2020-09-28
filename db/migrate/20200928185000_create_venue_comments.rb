class CreateVenueComments < ActiveRecord::Migration[6.0]
  def change
    create_table :venue_comments do |t|
      t.integer :venue_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
