require "application_system_test_case"

class CoordinatorPositionsTest < ApplicationSystemTestCase
  setup do
    @coordinator_position = coordinator_positions(:one)
  end

  test "visiting the index" do
    visit coordinator_positions_url
    assert_selector "h1", text: "Coordinator Positions"
  end

  test "creating a Coordinator position" do
    visit coordinator_positions_url
    click_on "New Coordinator Position"

    fill_in "Description", with: @coordinator_position.description
    fill_in "Position", with: @coordinator_position.position
    click_on "Create Coordinator position"

    assert_text "Coordinator position was successfully created"
    click_on "Back"
  end

  test "updating a Coordinator position" do
    visit coordinator_positions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coordinator_position.description
    fill_in "Position", with: @coordinator_position.position
    click_on "Update Coordinator position"

    assert_text "Coordinator position was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordinator position" do
    visit coordinator_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordinator position was successfully destroyed"
  end
end
