require "application_system_test_case"

class OfficerCheckInsTest < ApplicationSystemTestCase
  setup do
    @officer_check_in = officer_check_ins(:one)
  end

  test "visiting the index" do
    visit officer_check_ins_url
    assert_selector "h1", text: "Officer Check Ins"
  end

  test "creating a Officer check in" do
    visit officer_check_ins_url
    click_on "New Officer Check In"

    fill_in "Check in date", with: @officer_check_in.check_in_date
    fill_in "Event", with: @officer_check_in.event_id
    fill_in "Officer", with: @officer_check_in.officer_id
    click_on "Create Officer check in"

    assert_text "Officer check in was successfully created"
    click_on "Back"
  end

  test "updating a Officer check in" do
    visit officer_check_ins_url
    click_on "Edit", match: :first

    fill_in "Check in date", with: @officer_check_in.check_in_date
    fill_in "Event", with: @officer_check_in.event_id
    fill_in "Officer", with: @officer_check_in.officer_id
    click_on "Update Officer check in"

    assert_text "Officer check in was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer check in" do
    visit officer_check_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer check in was successfully destroyed"
  end
end
