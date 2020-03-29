require "application_system_test_case"

class OfficerPositionsTest < ApplicationSystemTestCase
  setup do
    @officer_position = officer_positions(:one)
  end

  test "visiting the index" do
    visit officer_positions_url
    assert_selector "h1", text: "Officer Positions"
  end

  test "creating a Officer position" do
    visit officer_positions_url
    click_on "New Officer Position"

    fill_in "Description", with: @officer_position.description
    fill_in "Position", with: @officer_position.position
    click_on "Create Officer position"

    assert_text "Officer position was successfully created"
    click_on "Back"
  end

  test "updating a Officer position" do
    visit officer_positions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @officer_position.description
    fill_in "Position", with: @officer_position.position
    click_on "Update Officer position"

    assert_text "Officer position was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer position" do
    visit officer_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer position was successfully destroyed"
  end
end
