class AddDetailsToWisata < ActiveRecord::Migration
  def change
    add_column :wisatas, :jambuka, :string
    add_column :wisatas, :fulldeskripsi, :text
    add_column :wisatas, :tips, :text
    add_column :wisatas, :transportasi, :text
  end
end
