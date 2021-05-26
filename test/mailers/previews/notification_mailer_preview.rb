class NotificationPreview < ActionMailer::Preview

    def notificate_user
        NotificationMailer.notificate_user(Schedule.first.id)
    end

end