class AddFotoToWisata < ActiveRecord::Migration
  def change
    add_column :wisatas, :foto, :string
  end
end
