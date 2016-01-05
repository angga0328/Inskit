class AddTwitterlinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitterlink, :boolean
  end
end
