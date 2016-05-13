class StaticPagesController < ApplicationController
  def home
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @reviews=Review.order('created_at DESC').page(params[:page]).per_page(10)
    @beritas=Berita.all
    @wisatas=Wisata.all.order(:cached_votes_up => :desc)
  end

  def help
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  def privacy
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  def about
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  def contact
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @daerahs = Daerah.all
  end

  def popular_location
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @wisatas = Wisata.all.order(:cached_votes_up => :desc)
  end

end
