class AddBioToGuide < ActiveRecord::Migration
  def change
    add_column :guides, :bio, :text
  end
end
