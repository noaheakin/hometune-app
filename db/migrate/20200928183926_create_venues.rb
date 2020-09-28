class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :capacity
      t.boolean :twenty_one_and_up
      t.integer :popularity

      t.timestamps
    end
  end
end
