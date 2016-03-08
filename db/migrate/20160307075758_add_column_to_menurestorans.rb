class AddColumnToMenurestorans < ActiveRecord::Migration
  def change
    add_column :menurestorans, :wisata_id, :integer
  end
end
