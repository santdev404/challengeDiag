class Consultation < ApplicationRecord
  belongs_to :user

  validates :disease, presence: true
  
  after_create :schedule_interview

  def schedule_interview  
    
    schedule = Schedule.new
    schedule.user_id = self.user.id
    schedule.consultation_id = self.id
    schedule.save!
    

  end
end
