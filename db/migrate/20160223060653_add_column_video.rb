class AddColumnVideo < ActiveRecord::Migration
  def change
    add_column :videos, :wisata_id, :integer
  end
end
