class AddFotourlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fotourl, :string
  end
end
