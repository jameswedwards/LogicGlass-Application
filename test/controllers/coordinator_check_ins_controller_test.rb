require 'test_helper'

class CoordinatorCheckInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator_check_in = coordinator_check_ins(:one)
  end

  test "should get index" do
    get coordinator_check_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_check_in_url
    assert_response :success
  end

  test "should create coordinator_check_in" do
    assert_difference('CoordinatorCheckIn.count') do
      post coordinator_check_ins_url, params: { coordinator_check_in: { check_in_date: @coordinator_check_in.check_in_date, coordinator_id: @coordinator_check_in.coordinator_id, event_id: @coordinator_check_in.event_id } }
    end

    assert_redirected_to coordinator_check_in_url(CoordinatorCheckIn.last)
  end

  test "should show coordinator_check_in" do
    get coordinator_check_in_url(@coordinator_check_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_check_in_url(@coordinator_check_in)
    assert_response :success
  end

  test "should update coordinator_check_in" do
    patch coordinator_check_in_url(@coordinator_check_in), params: { coordinator_check_in: { check_in_date: @coordinator_check_in.check_in_date, coordinator_id: @coordinator_check_in.coordinator_id, event_id: @coordinator_check_in.event_id } }
    assert_redirected_to coordinator_check_in_url(@coordinator_check_in)
  end

  test "should destroy coordinator_check_in" do
    assert_difference('CoordinatorCheckIn.count', -1) do
      delete coordinator_check_in_url(@coordinator_check_in)
    end

    assert_redirected_to coordinator_check_ins_url
  end
end
