require "application_system_test_case"

class CoordinatorsTest < ApplicationSystemTestCase
  setup do
    @coordinator = coordinators(:one)
  end

  test "visiting the index" do
    visit coordinators_url
    assert_selector "h1", text: "Coordinators"
  end

  test "creating a Coordinator" do
    visit coordinators_url
    click_on "New Coordinator"

    fill_in "Address", with: @coordinator.address
    fill_in "City", with: @coordinator.city
    fill_in "Country", with: @coordinator.country_id
    fill_in "Date of birth", with: @coordinator.date_of_birth
    fill_in "First name", with: @coordinator.first_name
    fill_in "Home phone", with: @coordinator.home_phone
    fill_in "Last name", with: @coordinator.last_name
    fill_in "Major", with: @coordinator.major
    fill_in "Middle initial", with: @coordinator.middle_initial
    fill_in "Mobile phone", with: @coordinator.mobile_phone
    check "Payment" if @coordinator.payment
    fill_in "Peoplesoft", with: @coordinator.peoplesoft_id
    fill_in "Position", with: @coordinator.position
    fill_in "State", with: @coordinator.state_id
    fill_in "Student class", with: @coordinator.student_class_id
    fill_in "Zip", with: @coordinator.zip
    click_on "Create Coordinator"

    assert_text "Coordinator was successfully created"
    click_on "Back"
  end

  test "updating a Coordinator" do
    visit coordinators_url
    click_on "Edit", match: :first

    fill_in "Address", with: @coordinator.address
    fill_in "City", with: @coordinator.city
    fill_in "Country", with: @coordinator.country_id
    fill_in "Date of birth", with: @coordinator.date_of_birth
    fill_in "First name", with: @coordinator.first_name
    fill_in "Home phone", with: @coordinator.home_phone
    fill_in "Last name", with: @coordinator.last_name
    fill_in "Major", with: @coordinator.major
    fill_in "Middle initial", with: @coordinator.middle_initial
    fill_in "Mobile phone", with: @coordinator.mobile_phone
    check "Payment" if @coordinator.payment
    fill_in "Peoplesoft", with: @coordinator.peoplesoft_id
    fill_in "Position", with: @coordinator.position
    fill_in "State", with: @coordinator.state_id
    fill_in "Student class", with: @coordinator.student_class_id
    fill_in "Zip", with: @coordinator.zip
    click_on "Update Coordinator"

    assert_text "Coordinator was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordinator" do
    visit coordinators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordinator was successfully destroyed"
  end
end
