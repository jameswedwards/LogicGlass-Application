require "application_system_test_case"

class OfficersTest < ApplicationSystemTestCase
  setup do
    @officer = officers(:one)
  end

  test "visiting the index" do
    visit officers_url
    assert_selector "h1", text: "Officers"
  end

  test "creating a Officer" do
    visit officers_url
    click_on "New Officer"

    fill_in "Address", with: @officer.address
    fill_in "City", with: @officer.city
    fill_in "Country", with: @officer.country_id
    fill_in "Date of birth", with: @officer.date_of_birth
    fill_in "First name", with: @officer.first_name
    fill_in "Home phone", with: @officer.home_phone
    fill_in "Last name", with: @officer.last_name
    fill_in "Major", with: @officer.major
    fill_in "Middle initial", with: @officer.middle_initial
    fill_in "Mobile phone", with: @officer.mobile_phone
    check "Payment" if @officer.payment
    fill_in "Peoplesoft", with: @officer.peoplesoft_id
    fill_in "Position", with: @officer.position
    fill_in "State", with: @officer.state_id
    fill_in "Student class", with: @officer.student_class_id
    fill_in "Zip", with: @officer.zip
    click_on "Create Officer"

    assert_text "Officer was successfully created"
    click_on "Back"
  end

  test "updating a Officer" do
    visit officers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @officer.address
    fill_in "City", with: @officer.city
    fill_in "Country", with: @officer.country_id
    fill_in "Date of birth", with: @officer.date_of_birth
    fill_in "First name", with: @officer.first_name
    fill_in "Home phone", with: @officer.home_phone
    fill_in "Last name", with: @officer.last_name
    fill_in "Major", with: @officer.major
    fill_in "Middle initial", with: @officer.middle_initial
    fill_in "Mobile phone", with: @officer.mobile_phone
    check "Payment" if @officer.payment
    fill_in "Peoplesoft", with: @officer.peoplesoft_id
    fill_in "Position", with: @officer.position
    fill_in "State", with: @officer.state_id
    fill_in "Student class", with: @officer.student_class_id
    fill_in "Zip", with: @officer.zip
    click_on "Update Officer"

    assert_text "Officer was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer" do
    visit officers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer was successfully destroyed"
  end
end
