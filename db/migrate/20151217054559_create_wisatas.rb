class CreateWisatas < ActiveRecord::Migration
  def change
    create_table :wisatas do |t|
      t.string :nama
      t.text :alamat
      t.text :deskripsi
      t.references :daerah, index: true, foreign_key: true
      t.references :kategori, index: true, foreign_key: true
      t.string :telp

      t.timestamps null: false
    end
  end
end
