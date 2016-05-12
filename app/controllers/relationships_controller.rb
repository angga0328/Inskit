class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    user.notify("ikuti", current_user.username)
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end
end
