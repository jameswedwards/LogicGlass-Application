require 'test_helper'

class OfficersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officer = officers(:one)
  end

  test "should get index" do
    get officers_url
    assert_response :success
  end

  test "should get new" do
    get new_officer_url
    assert_response :success
  end

  test "should create officer" do
    assert_difference('Officer.count') do
      post officers_url, params: { officer: { address: @officer.address, city: @officer.city, country_id: @officer.country_id, date_of_birth: @officer.date_of_birth, first_name: @officer.first_name, home_phone: @officer.home_phone, last_name: @officer.last_name, major: @officer.major, middle_initial: @officer.middle_initial, mobile_phone: @officer.mobile_phone, payment: @officer.payment, peoplesoft_id: @officer.peoplesoft_id, position: @officer.position, state_id: @officer.state_id, student_class_id: @officer.student_class_id, zip: @officer.zip } }
    end

    assert_redirected_to officer_url(Officer.last)
  end

  test "should show officer" do
    get officer_url(@officer)
    assert_response :success
  end

  test "should get edit" do
    get edit_officer_url(@officer)
    assert_response :success
  end

  test "should update officer" do
    patch officer_url(@officer), params: { officer: { address: @officer.address, city: @officer.city, country_id: @officer.country_id, date_of_birth: @officer.date_of_birth, first_name: @officer.first_name, home_phone: @officer.home_phone, last_name: @officer.last_name, major: @officer.major, middle_initial: @officer.middle_initial, mobile_phone: @officer.mobile_phone, payment: @officer.payment, peoplesoft_id: @officer.peoplesoft_id, position: @officer.position, state_id: @officer.state_id, student_class_id: @officer.student_class_id, zip: @officer.zip } }
    assert_redirected_to officer_url(@officer)
  end

  test "should destroy officer" do
    assert_difference('Officer.count', -1) do
      delete officer_url(@officer)
    end

    assert_redirected_to officers_url
  end
end
