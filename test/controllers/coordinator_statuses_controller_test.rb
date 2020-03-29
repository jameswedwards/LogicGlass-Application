require 'test_helper'

class CoordinatorStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator_status = coordinator_statuses(:one)
  end

  test "should get index" do
    get coordinator_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_status_url
    assert_response :success
  end

  test "should create coordinator_status" do
    assert_difference('CoordinatorStatus.count') do
      post coordinator_statuses_url, params: { coordinator_status: { description: @coordinator_status.description, status: @coordinator_status.status } }
    end

    assert_redirected_to coordinator_status_url(CoordinatorStatus.last)
  end

  test "should show coordinator_status" do
    get coordinator_status_url(@coordinator_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_status_url(@coordinator_status)
    assert_response :success
  end

  test "should update coordinator_status" do
    patch coordinator_status_url(@coordinator_status), params: { coordinator_status: { description: @coordinator_status.description, status: @coordinator_status.status } }
    assert_redirected_to coordinator_status_url(@coordinator_status)
  end

  test "should destroy coordinator_status" do
    assert_difference('CoordinatorStatus.count', -1) do
      delete coordinator_status_url(@coordinator_status)
    end

    assert_redirected_to coordinator_statuses_url
  end
end
