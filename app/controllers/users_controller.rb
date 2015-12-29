class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index

  end

  def show
    @reviews = @user.reviews.order('created_at DESC').page(params[:page]).per_page(10)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
