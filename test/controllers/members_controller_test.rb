require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { address: @member.address, city: @member.city, country_id: @member.country_id, date_of_birth: @member.date_of_birth, first_name: @member.first_name, home_phone: @member.home_phone, last_name: @member.last_name, major: @member.major, middle_initial: @member.middle_initial, mobile_phone: @member.mobile_phone, payment: @member.payment, peoplesoft_id: @member.peoplesoft_id, state_id: @member.state_id, student_class_id: @member.student_class_id, zip: @member.zip } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { address: @member.address, city: @member.city, country_id: @member.country_id, date_of_birth: @member.date_of_birth, first_name: @member.first_name, home_phone: @member.home_phone, last_name: @member.last_name, major: @member.major, middle_initial: @member.middle_initial, mobile_phone: @member.mobile_phone, payment: @member.payment, peoplesoft_id: @member.peoplesoft_id, state_id: @member.state_id, student_class_id: @member.student_class_id, zip: @member.zip } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
