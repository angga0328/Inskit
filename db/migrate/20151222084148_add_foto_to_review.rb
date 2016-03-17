class AddFotoToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :foto, :string
  end
end
