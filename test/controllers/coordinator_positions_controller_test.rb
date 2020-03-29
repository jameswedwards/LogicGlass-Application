require 'test_helper'

class CoordinatorPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator_position = coordinator_positions(:one)
  end

  test "should get index" do
    get coordinator_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_position_url
    assert_response :success
  end

  test "should create coordinator_position" do
    assert_difference('CoordinatorPosition.count') do
      post coordinator_positions_url, params: { coordinator_position: { description: @coordinator_position.description, position: @coordinator_position.position } }
    end

    assert_redirected_to coordinator_position_url(CoordinatorPosition.last)
  end

  test "should show coordinator_position" do
    get coordinator_position_url(@coordinator_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_position_url(@coordinator_position)
    assert_response :success
  end

  test "should update coordinator_position" do
    patch coordinator_position_url(@coordinator_position), params: { coordinator_position: { description: @coordinator_position.description, position: @coordinator_position.position } }
    assert_redirected_to coordinator_position_url(@coordinator_position)
  end

  test "should destroy coordinator_position" do
    assert_difference('CoordinatorPosition.count', -1) do
      delete coordinator_position_url(@coordinator_position)
    end

    assert_redirected_to coordinator_positions_url
  end
end
