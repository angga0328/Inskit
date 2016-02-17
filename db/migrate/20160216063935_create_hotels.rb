class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.integer :wisata_id
      t.string :nama
      t.text :alamat
      t.text :deskripsi
      t.string :telp
      t.integer :harga
      t.float :latitude
      t.float :longitude
      t.string :foto
      
      
      
      t.timestamps null: false
    end
  end
end
