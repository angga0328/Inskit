class AddSlugToDaerahs < ActiveRecord::Migration
  def change
    add_column :daerahs, :slug, :string
    add_index :daerahs, :slug, unique: true

    add_column :kategoris, :slug, :string
    add_index :kategoris, :slug, unique: true

    add_column :wisatas, :slug, :string
    add_index :wisatas, :slug, unique: true

    add_column :hotels, :slug, :string
    add_index :hotels, :slug, unique: true

    add_column :restaurants, :slug, :string
    add_index :restaurants, :slug, unique: true

    add_column :users, :slug, :string
    add_index :users, :slug, unique: true

    add_column :guides, :slug, :string
    add_index :guides, :slug, unique: true
  end
end
