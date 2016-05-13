module NotificationsHelper
    
  def unreadnotif
    unreadnotif =current_user.mailbox.notifications.each do|notif|
      notif.is_read?(current_user)
    end
    unreadnotif.count
  end
  
  def markasread
    current_user.mailbox.notifications.each do|notif|
      notif.mark_as_read(current_user)
    end
  end
  
  def notif
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end
end
