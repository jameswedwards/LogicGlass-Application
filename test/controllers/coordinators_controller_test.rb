require 'test_helper'

class CoordinatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator = coordinators(:one)
  end

  test "should get index" do
    get coordinators_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_url
    assert_response :success
  end

  test "should create coordinator" do
    assert_difference('Coordinator.count') do
      post coordinators_url, params: { coordinator: { address: @coordinator.address, city: @coordinator.city, country_id: @coordinator.country_id, date_of_birth: @coordinator.date_of_birth, first_name: @coordinator.first_name, home_phone: @coordinator.home_phone, last_name: @coordinator.last_name, major: @coordinator.major, middle_initial: @coordinator.middle_initial, mobile_phone: @coordinator.mobile_phone, payment: @coordinator.payment, peoplesoft_id: @coordinator.peoplesoft_id, position: @coordinator.position, state_id: @coordinator.state_id, student_class_id: @coordinator.student_class_id, zip: @coordinator.zip } }
    end

    assert_redirected_to coordinator_url(Coordinator.last)
  end

  test "should show coordinator" do
    get coordinator_url(@coordinator)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_url(@coordinator)
    assert_response :success
  end

  test "should update coordinator" do
    patch coordinator_url(@coordinator), params: { coordinator: { address: @coordinator.address, city: @coordinator.city, country_id: @coordinator.country_id, date_of_birth: @coordinator.date_of_birth, first_name: @coordinator.first_name, home_phone: @coordinator.home_phone, last_name: @coordinator.last_name, major: @coordinator.major, middle_initial: @coordinator.middle_initial, mobile_phone: @coordinator.mobile_phone, payment: @coordinator.payment, peoplesoft_id: @coordinator.peoplesoft_id, position: @coordinator.position, state_id: @coordinator.state_id, student_class_id: @coordinator.student_class_id, zip: @coordinator.zip } }
    assert_redirected_to coordinator_url(@coordinator)
  end

  test "should destroy coordinator" do
    assert_difference('Coordinator.count', -1) do
      delete coordinator_url(@coordinator)
    end

    assert_redirected_to coordinators_url
  end
end
