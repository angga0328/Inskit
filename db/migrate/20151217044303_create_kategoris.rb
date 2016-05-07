class CreateKategoris < ActiveRecord::Migration
  def change
    create_table :kategoris do |t|
      t.string :nama
      t.string :foto

      t.timestamps null: false
    end
  end
end
