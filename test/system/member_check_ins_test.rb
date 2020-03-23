require "application_system_test_case"

class MemberCheckInsTest < ApplicationSystemTestCase
  setup do
    @member_check_in = member_check_ins(:one)
  end

  test "visiting the index" do
    visit member_check_ins_url
    assert_selector "h1", text: "Member Check Ins"
  end

  test "creating a Member check in" do
    visit member_check_ins_url
    click_on "New Member Check In"

    fill_in "Check in date", with: @member_check_in.check_in_date
    fill_in "Event", with: @member_check_in.event_id
    fill_in "Member", with: @member_check_in.member_id
    click_on "Create Member check in"

    assert_text "Member check in was successfully created"
    click_on "Back"
  end

  test "updating a Member check in" do
    visit member_check_ins_url
    click_on "Edit", match: :first

    fill_in "Check in date", with: @member_check_in.check_in_date
    fill_in "Event", with: @member_check_in.event_id
    fill_in "Member", with: @member_check_in.member_id
    click_on "Update Member check in"

    assert_text "Member check in was successfully updated"
    click_on "Back"
  end

  test "destroying a Member check in" do
    visit member_check_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member check in was successfully destroyed"
  end
end
