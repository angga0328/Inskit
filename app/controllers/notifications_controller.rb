class NotificationsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @notifications = current_user.mailbox.notifications
  end
end
