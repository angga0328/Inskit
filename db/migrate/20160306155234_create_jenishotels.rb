class CreateJenishotels < ActiveRecord::Migration
  def change
    create_table :jenishotels do |t|
      t.integer :hotel_id
      t.string :jenis_kamar
      t.string :foto

      t.timestamps null: false
    end
  end
end
