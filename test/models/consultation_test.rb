require "test_helper"

class ConsultationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one)
    @consultation = Consultation.new(disease: "ABC",user_id: @user.id)  
    # @consultation = consultations(:one)
  end

  test "Consultation should be valid" do
    assert @consultation.valid?
  end

  test "Consultation should not be Valid" do
    @consultation.user_id = nil
    refute @consultation.valid?
  end
end
