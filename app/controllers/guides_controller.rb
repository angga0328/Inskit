class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :like, :dislike]
  before_action :authenticate_user!, except: [:show]

  def like
    @guide.upvote_by current_user
    redirect_to :back
  end

  def dislike
    @guide.downvote_by current_user
    redirect_to :back
  end

  def show
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @reviews = @guide.reviews.order('created_at DESC').page(params[:page]).per_page(10)
    if user_signed_in?
      @review = current_user.reviews.build
    end
  end

  def index
   
  end

  private
    def set_guide
      @guide = Guide.find(params[:id])
    end
end
