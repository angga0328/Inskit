class AddLatitudeAndLongitudeToWisata < ActiveRecord::Migration
  def change
    add_column :wisatas, :latitude, :float
    add_column :wisatas, :longitude, :float
  end
end
