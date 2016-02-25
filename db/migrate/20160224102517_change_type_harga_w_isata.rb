class ChangeTypeHargaWIsata < ActiveRecord::Migration
  def change
    change_column :wisatas, :harga, :string
  end
end
