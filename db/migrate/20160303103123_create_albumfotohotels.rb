class CreateAlbumfotohotels < ActiveRecord::Migration
  def change
    create_table :albumfotohotels do |t|
      t.integer :hotel_id
      t.string :foto

      t.timestamps null: false
    end
  end
end
