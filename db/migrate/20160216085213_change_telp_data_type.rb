class ChangeTelpDataType < ActiveRecord::Migration
  def change
    change_column :hotels, :telp,  :string
  end
end
