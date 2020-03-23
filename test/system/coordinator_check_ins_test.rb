require "application_system_test_case"

class CoordinatorCheckInsTest < ApplicationSystemTestCase
  setup do
    @coordinator_check_in = coordinator_check_ins(:one)
  end

  test "visiting the index" do
    visit coordinator_check_ins_url
    assert_selector "h1", text: "Coordinator Check Ins"
  end

  test "creating a Coordinator check in" do
    visit coordinator_check_ins_url
    click_on "New Coordinator Check In"

    fill_in "Check in date", with: @coordinator_check_in.check_in_date
    fill_in "Coordinator", with: @coordinator_check_in.coordinator_id
    fill_in "Event", with: @coordinator_check_in.event_id
    click_on "Create Coordinator check in"

    assert_text "Coordinator check in was successfully created"
    click_on "Back"
  end

  test "updating a Coordinator check in" do
    visit coordinator_check_ins_url
    click_on "Edit", match: :first

    fill_in "Check in date", with: @coordinator_check_in.check_in_date
    fill_in "Coordinator", with: @coordinator_check_in.coordinator_id
    fill_in "Event", with: @coordinator_check_in.event_id
    click_on "Update Coordinator check in"

    assert_text "Coordinator check in was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordinator check in" do
    visit coordinator_check_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordinator check in was successfully destroyed"
  end
end
