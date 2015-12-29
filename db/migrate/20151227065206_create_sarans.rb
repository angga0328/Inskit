class CreateSarans < ActiveRecord::Migration
  def change
    create_table :sarans do |t|
      t.string :nama
      t.string :email
      t.text :pesan

      t.timestamps null: false
    end
  end
end
