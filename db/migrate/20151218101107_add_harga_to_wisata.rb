class AddHargaToWisata < ActiveRecord::Migration
  def change
    add_column :wisatas, :harga, :integer
  end
end
