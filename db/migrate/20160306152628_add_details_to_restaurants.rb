class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :jambuka, :string
    add_column :restaurants, :menu, :string
    add_column :restaurants, :fulldeskripsi, :text
    add_column :restaurants, :transportasi, :text
  end
end
