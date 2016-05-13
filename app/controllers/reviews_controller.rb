class ReviewsController < ApplicationController
  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review created!"
      redirect_to :back
    else
      render 'root'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:success] = "Review deleted"
    redirect_to request.referrer || root_url
  end


  def like
    @review = Review.find(params[:id])
    @review.upvote_by current_user
    @review.user.notify("notif", "#{view_context.link_to current_user.username, @review.wisata}")
    redirect_to :back
  end

  def dislike
    @review = Review.find(params[:id])
    @review.downvote_by current_user
    redirect_to :back
  end

  private
    def review_params
      params.require(:review).permit(:content, :wisata_id, :foto, :guide_id)
    end

    def correct_user
      @review = current_user.reviews.find_by(id: params[:id])
      redirect_to root_url if @review.nil?
    end
end
