class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.datetime :date

      t.timestamps
    end
  end
end