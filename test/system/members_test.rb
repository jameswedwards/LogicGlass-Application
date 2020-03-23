require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "creating a Member" do
    visit members_url
    click_on "New Member"

    fill_in "Address", with: @member.address
    fill_in "City", with: @member.city
    fill_in "Country", with: @member.country_id
    fill_in "Date of birth", with: @member.date_of_birth
    fill_in "First name", with: @member.first_name
    fill_in "Home phone", with: @member.home_phone
    fill_in "Last name", with: @member.last_name
    fill_in "Major", with: @member.major
    fill_in "Middle initial", with: @member.middle_initial
    fill_in "Mobile phone", with: @member.mobile_phone
    check "Payment" if @member.payment
    fill_in "Peoplesoft", with: @member.peoplesoft_id
    fill_in "State", with: @member.state_id
    fill_in "Student class", with: @member.student_class_id
    fill_in "Zip", with: @member.zip
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit members_url
    click_on "Edit", match: :first

    fill_in "Address", with: @member.address
    fill_in "City", with: @member.city
    fill_in "Country", with: @member.country_id
    fill_in "Date of birth", with: @member.date_of_birth
    fill_in "First name", with: @member.first_name
    fill_in "Home phone", with: @member.home_phone
    fill_in "Last name", with: @member.last_name
    fill_in "Major", with: @member.major
    fill_in "Middle initial", with: @member.middle_initial
    fill_in "Mobile phone", with: @member.mobile_phone
    check "Payment" if @member.payment
    fill_in "Peoplesoft", with: @member.peoplesoft_id
    fill_in "State", with: @member.state_id
    fill_in "Student class", with: @member.student_class_id
    fill_in "Zip", with: @member.zip
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
