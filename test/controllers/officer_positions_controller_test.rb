require 'test_helper'

class OfficerPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officer_position = officer_positions(:one)
  end

  test "should get index" do
    get officer_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_officer_position_url
    assert_response :success
  end

  test "should create officer_position" do
    assert_difference('OfficerPosition.count') do
      post officer_positions_url, params: { officer_position: { description: @officer_position.description, position: @officer_position.position } }
    end

    assert_redirected_to officer_position_url(OfficerPosition.last)
  end

  test "should show officer_position" do
    get officer_position_url(@officer_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_officer_position_url(@officer_position)
    assert_response :success
  end

  test "should update officer_position" do
    patch officer_position_url(@officer_position), params: { officer_position: { description: @officer_position.description, position: @officer_position.position } }
    assert_redirected_to officer_position_url(@officer_position)
  end

  test "should destroy officer_position" do
    assert_difference('OfficerPosition.count', -1) do
      delete officer_position_url(@officer_position)
    end

    assert_redirected_to officer_positions_url
  end
end
