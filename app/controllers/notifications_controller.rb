class NotificationsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end
  
  def markasread
    current_user.mailbox.notifications.each do|notif|
      notif.mark_as_read(current_user)
    end
  end
end
