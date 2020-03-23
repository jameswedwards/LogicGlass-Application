require 'test_helper'

class OfficerCheckInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officer_check_in = officer_check_ins(:one)
  end

  test "should get index" do
    get officer_check_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_officer_check_in_url
    assert_response :success
  end

  test "should create officer_check_in" do
    assert_difference('OfficerCheckIn.count') do
      post officer_check_ins_url, params: { officer_check_in: { check_in_date: @officer_check_in.check_in_date, event_id: @officer_check_in.event_id, officer_id: @officer_check_in.officer_id } }
    end

    assert_redirected_to officer_check_in_url(OfficerCheckIn.last)
  end

  test "should show officer_check_in" do
    get officer_check_in_url(@officer_check_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_officer_check_in_url(@officer_check_in)
    assert_response :success
  end

  test "should update officer_check_in" do
    patch officer_check_in_url(@officer_check_in), params: { officer_check_in: { check_in_date: @officer_check_in.check_in_date, event_id: @officer_check_in.event_id, officer_id: @officer_check_in.officer_id } }
    assert_redirected_to officer_check_in_url(@officer_check_in)
  end

  test "should destroy officer_check_in" do
    assert_difference('OfficerCheckIn.count', -1) do
      delete officer_check_in_url(@officer_check_in)
    end

    assert_redirected_to officer_check_ins_url
  end
end
