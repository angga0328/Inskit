class CreateMenurestorans < ActiveRecord::Migration
  def change
    create_table :menurestorans do |t|
      t.integer :restaurant_id
      t.string :nama_menu
      t.string :foto

      t.timestamps null: false
    end
  end
end
