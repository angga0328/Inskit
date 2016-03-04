class AddWebsitedanjumlahkamar < ActiveRecord::Migration
  def change
    add_column :hotels, :website, :string
    add_column :hotels, :jumlahkamar, :string
  end
end
