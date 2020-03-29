require "application_system_test_case"

class OfficerStatusesTest < ApplicationSystemTestCase
  setup do
    @officer_status = officer_statuses(:one)
  end

  test "visiting the index" do
    visit officer_statuses_url
    assert_selector "h1", text: "Officer Statuses"
  end

  test "creating a Officer status" do
    visit officer_statuses_url
    click_on "New Officer Status"

    fill_in "Description", with: @officer_status.description
    fill_in "Status", with: @officer_status.status
    click_on "Create Officer status"

    assert_text "Officer status was successfully created"
    click_on "Back"
  end

  test "updating a Officer status" do
    visit officer_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @officer_status.description
    fill_in "Status", with: @officer_status.status
    click_on "Update Officer status"

    assert_text "Officer status was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer status" do
    visit officer_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer status was successfully destroyed"
  end
end
