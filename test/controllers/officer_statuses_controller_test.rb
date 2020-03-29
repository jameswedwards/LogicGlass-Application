require 'test_helper'

class OfficerStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officer_status = officer_statuses(:one)
  end

  test "should get index" do
    get officer_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_officer_status_url
    assert_response :success
  end

  test "should create officer_status" do
    assert_difference('OfficerStatus.count') do
      post officer_statuses_url, params: { officer_status: { description: @officer_status.description, status: @officer_status.status } }
    end

    assert_redirected_to officer_status_url(OfficerStatus.last)
  end

  test "should show officer_status" do
    get officer_status_url(@officer_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_officer_status_url(@officer_status)
    assert_response :success
  end

  test "should update officer_status" do
    patch officer_status_url(@officer_status), params: { officer_status: { description: @officer_status.description, status: @officer_status.status } }
    assert_redirected_to officer_status_url(@officer_status)
  end

  test "should destroy officer_status" do
    assert_difference('OfficerStatus.count', -1) do
      delete officer_status_url(@officer_status)
    end

    assert_redirected_to officer_statuses_url
  end
end
