class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :capacity
      t.integer :popularity
      t.string :img_url

      t.timestamps
    end
  end
end
