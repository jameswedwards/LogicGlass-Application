require "application_system_test_case"

class MemberStatusesTest < ApplicationSystemTestCase
  setup do
    @member_status = member_statuses(:one)
  end

  test "visiting the index" do
    visit member_statuses_url
    assert_selector "h1", text: "Member Statuses"
  end

  test "creating a Member status" do
    visit member_statuses_url
    click_on "New Member Status"

    fill_in "Description", with: @member_status.description
    fill_in "Status", with: @member_status.status
    click_on "Create Member status"

    assert_text "Member status was successfully created"
    click_on "Back"
  end

  test "updating a Member status" do
    visit member_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @member_status.description
    fill_in "Status", with: @member_status.status
    click_on "Update Member status"

    assert_text "Member status was successfully updated"
    click_on "Back"
  end

  test "destroying a Member status" do
    visit member_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member status was successfully destroyed"
  end
end
