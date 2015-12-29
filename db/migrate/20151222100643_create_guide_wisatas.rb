class CreateGuideWisatas < ActiveRecord::Migration
  def change
    create_table :guide_wisatas do |t|
      t.references :guide, index: true, foreign_key: true
      t.references :wisata, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :guide_wisatas, [:guide_id, :wisata_id], unique: true
  end
end
