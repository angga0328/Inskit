class StaticPagesController < ApplicationController
  def home
    @reviews=Review.order('created_at DESC').page(params[:page]).per_page(10)
    @beritas=Berita.all
    @wisatas=Wisata.all.order(:cached_votes_up => :desc)
  end

  def help
  end

  def privacy
  end

  def about
  end

  def contact
    @daerahs = Daerah.all
  end

  def popular_location
    @wisatas = Wisata.all.order(:cached_votes_up => :desc)
  end

end
