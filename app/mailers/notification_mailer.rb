class NotificationMailer < ApplicationMailer

    def notificate_user(schedule_id)
        
        @schedule   = Schedule.find(schedule_id)
        @user       = @schedule.user.email
        @start_at   = @schedule.start_at
        @end_at     = @schedule.end_at

        mail(
            to: @medic.to_s,
            subject: 'Schedule confirmation'
        )

    
    end

end