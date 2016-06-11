class UsersController < ApplicationController
  before_action :set_user, only: [:show, :following, :followers]

  def index
  end



  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow', locals:{tipe: "Following"}
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow', locals:{tipe: "Followers"}
  end

  def show
    @reviews = @user.reviews.order('created_at DESC').page(params[:page]).per_page(10)
  end

  private
    def set_user
      @notifications = current_user != nil ? current_user.mailbox.notifications : nil
      @user = User.friendly.find(params[:id])
    end
end
