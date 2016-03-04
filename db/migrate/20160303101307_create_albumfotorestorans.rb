class CreateAlbumfotorestorans < ActiveRecord::Migration
  def change
    create_table :albumfotorestorans do |t|
      t.integer :restaurant_id
      t.string :foto

      t.timestamps null: false
    end
  end
end
