class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :consultation


  before_create :set_schedule_time
  

  def set_schedule_time
    self.start_at = DateTime.now
    self.end_at   = DateTime.now + 30.minutes
  end




end
