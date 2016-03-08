class AddDetailsToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :jamreservasi, :string
    add_column :hotels, :hargakamar, :string
    add_column :hotels, :fulldeskripsi, :text
    add_column :hotels, :transportasi, :text
  end
end
