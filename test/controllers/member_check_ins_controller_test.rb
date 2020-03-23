require 'test_helper'

class MemberCheckInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_check_in = member_check_ins(:one)
  end

  test "should get index" do
    get member_check_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_member_check_in_url
    assert_response :success
  end

  test "should create member_check_in" do
    assert_difference('MemberCheckIn.count') do
      post member_check_ins_url, params: { member_check_in: { check_in_date: @member_check_in.check_in_date, event_id: @member_check_in.event_id, member_id: @member_check_in.member_id } }
    end

    assert_redirected_to member_check_in_url(MemberCheckIn.last)
  end

  test "should show member_check_in" do
    get member_check_in_url(@member_check_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_check_in_url(@member_check_in)
    assert_response :success
  end

  test "should update member_check_in" do
    patch member_check_in_url(@member_check_in), params: { member_check_in: { check_in_date: @member_check_in.check_in_date, event_id: @member_check_in.event_id, member_id: @member_check_in.member_id } }
    assert_redirected_to member_check_in_url(@member_check_in)
  end

  test "should destroy member_check_in" do
    assert_difference('MemberCheckIn.count', -1) do
      delete member_check_in_url(@member_check_in)
    end

    assert_redirected_to member_check_ins_url
  end
end
