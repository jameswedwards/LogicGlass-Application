require "application_system_test_case"

class CoordinatorStatusesTest < ApplicationSystemTestCase
  setup do
    @coordinator_status = coordinator_statuses(:one)
  end

  test "visiting the index" do
    visit coordinator_statuses_url
    assert_selector "h1", text: "Coordinator Statuses"
  end

  test "creating a Coordinator status" do
    visit coordinator_statuses_url
    click_on "New Coordinator Status"

    fill_in "Description", with: @coordinator_status.description
    fill_in "Status", with: @coordinator_status.status
    click_on "Create Coordinator status"

    assert_text "Coordinator status was successfully created"
    click_on "Back"
  end

  test "updating a Coordinator status" do
    visit coordinator_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coordinator_status.description
    fill_in "Status", with: @coordinator_status.status
    click_on "Update Coordinator status"

    assert_text "Coordinator status was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordinator status" do
    visit coordinator_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordinator status was successfully destroyed"
  end
end
