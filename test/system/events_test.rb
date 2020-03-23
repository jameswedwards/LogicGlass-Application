require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Address", with: @event.address
    fill_in "Building name", with: @event.building_name
    fill_in "Category", with: @event.category
    fill_in "City", with: @event.city
    fill_in "Country", with: @event.country_id
    fill_in "Description", with: @event.description
    fill_in "Event date", with: @event.event_date
    fill_in "Event status", with: @event.event_status_id
    fill_in "Event type", with: @event.event_type_id
    fill_in "Fee", with: @event.fee
    fill_in "Sponsor", with: @event.sponsor_id
    fill_in "State", with: @event.state_id
    fill_in "Zip", with: @event.zip
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event.address
    fill_in "Building name", with: @event.building_name
    fill_in "Category", with: @event.category
    fill_in "City", with: @event.city
    fill_in "Country", with: @event.country_id
    fill_in "Description", with: @event.description
    fill_in "Event date", with: @event.event_date
    fill_in "Event status", with: @event.event_status_id
    fill_in "Event type", with: @event.event_type_id
    fill_in "Fee", with: @event.fee
    fill_in "Sponsor", with: @event.sponsor_id
    fill_in "State", with: @event.state_id
    fill_in "Zip", with: @event.zip
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
