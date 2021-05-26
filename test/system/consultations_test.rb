require "application_system_test_case"

class ConsultationsTest < ApplicationSystemTestCase
  setup do
    @consultation = consultations(:one)
  end

  test "visiting the index" do
    visit consultations_url
    assert_selector "h1", text: "Consultations"
  end

  test "creating a Consultation" do
    visit consultations_url
    click_on "New Consultation"

    fill_in "Body mass", with: @consultation.body_mass
    fill_in "Diastolic", with: @consultation.diastolic
    fill_in "Disease", with: @consultation.disease
    fill_in "Heart rate", with: @consultation.heart_rate
    fill_in "Height", with: @consultation.height
    fill_in "Respiratory rate", with: @consultation.respiratory_rate
    fill_in "Systolic", with: @consultation.systolic
    fill_in "Temperature", with: @consultation.temperature
    fill_in "User", with: @consultation.user_id
    fill_in "Weight", with: @consultation.weight
    click_on "Create Consultation"

    assert_text "Consultation was successfully created"
    click_on "Back"
  end

  test "updating a Consultation" do
    visit consultations_url
    click_on "Edit", match: :first

    fill_in "Body mass", with: @consultation.body_mass
    fill_in "Diastolic", with: @consultation.diastolic
    fill_in "Disease", with: @consultation.disease
    fill_in "Heart rate", with: @consultation.heart_rate
    fill_in "Height", with: @consultation.height
    fill_in "Respiratory rate", with: @consultation.respiratory_rate
    fill_in "Systolic", with: @consultation.systolic
    fill_in "Temperature", with: @consultation.temperature
    fill_in "User", with: @consultation.user_id
    fill_in "Weight", with: @consultation.weight
    click_on "Update Consultation"

    assert_text "Consultation was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultation" do
    visit consultations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultation was successfully destroyed"
  end
end
