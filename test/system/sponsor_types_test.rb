require "application_system_test_case"

class SponsorTypesTest < ApplicationSystemTestCase
  setup do
    @sponsor_type = sponsor_types(:one)
  end

  test "visiting the index" do
    visit sponsor_types_url
    assert_selector "h1", text: "Sponsor Types"
  end

  test "creating a Sponsor type" do
    visit sponsor_types_url
    click_on "New Sponsor Type"

    fill_in "Description", with: @sponsor_type.description
    fill_in "Type", with: @sponsor_type.type
    click_on "Create Sponsor type"

    assert_text "Sponsor type was successfully created"
    click_on "Back"
  end

  test "updating a Sponsor type" do
    visit sponsor_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sponsor_type.description
    fill_in "Type", with: @sponsor_type.type
    click_on "Update Sponsor type"

    assert_text "Sponsor type was successfully updated"
    click_on "Back"
  end

  test "destroying a Sponsor type" do
    visit sponsor_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sponsor type was successfully destroyed"
  end
end
