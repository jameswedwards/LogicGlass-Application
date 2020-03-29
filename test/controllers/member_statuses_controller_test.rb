require 'test_helper'

class MemberStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_status = member_statuses(:one)
  end

  test "should get index" do
    get member_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_member_status_url
    assert_response :success
  end

  test "should create member_status" do
    assert_difference('MemberStatus.count') do
      post member_statuses_url, params: { member_status: { description: @member_status.description, status: @member_status.status } }
    end

    assert_redirected_to member_status_url(MemberStatus.last)
  end

  test "should show member_status" do
    get member_status_url(@member_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_status_url(@member_status)
    assert_response :success
  end

  test "should update member_status" do
    patch member_status_url(@member_status), params: { member_status: { description: @member_status.description, status: @member_status.status } }
    assert_redirected_to member_status_url(@member_status)
  end

  test "should destroy member_status" do
    assert_difference('MemberStatus.count', -1) do
      delete member_status_url(@member_status)
    end

    assert_redirected_to member_statuses_url
  end
end
