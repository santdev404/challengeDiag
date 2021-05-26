require "test_helper"

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one)
    @consultation = consultations(:one)
    @schedule = Schedule.new(user_id: @user.id, consultation_id: @consultation.id)  
    # @consultation = consultations(:one)
  end

  test "Consultation should be valid" do
    assert @schedule.valid?
  end

  test "Consultation should not be Valid" do
    @schedule.user_id = nil
    refute @schedule.valid?
  end
end
