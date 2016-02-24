class ChangeTypeDataHotel < ActiveRecord::Migration
  def change
    change_column :hotels, :harga,  :string
    change_column :restaurants, :harga,  :string
    change_column :restaurants, :telp,  :string
  end
end
