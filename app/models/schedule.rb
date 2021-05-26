class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :consultation


  before_create :set_schedule_time
  after_create :notify_user
  

  def set_schedule_time
    self.start_at = DateTime.now
    self.end_at   = DateTime.now + 30.minutes
  end


  def notify_user
    NotificationMailer.notificate_user(self.id).deliver_now
  end

end
