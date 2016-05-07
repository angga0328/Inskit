class CreateBeritas < ActiveRecord::Migration
  def change
    create_table :beritas do |t|
      t.string :title
      t.text :content
      t.string :foto
      t.timestamps null: false
    end
  end
end
