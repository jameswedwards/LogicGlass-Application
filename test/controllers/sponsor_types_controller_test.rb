require 'test_helper'

class SponsorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsor_type = sponsor_types(:one)
  end

  test "should get index" do
    get sponsor_types_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsor_type_url
    assert_response :success
  end

  test "should create sponsor_type" do
    assert_difference('SponsorType.count') do
      post sponsor_types_url, params: { sponsor_type: { description: @sponsor_type.description, type: @sponsor_type.type } }
    end

    assert_redirected_to sponsor_type_url(SponsorType.last)
  end

  test "should show sponsor_type" do
    get sponsor_type_url(@sponsor_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsor_type_url(@sponsor_type)
    assert_response :success
  end

  test "should update sponsor_type" do
    patch sponsor_type_url(@sponsor_type), params: { sponsor_type: { description: @sponsor_type.description, type: @sponsor_type.type } }
    assert_redirected_to sponsor_type_url(@sponsor_type)
  end

  test "should destroy sponsor_type" do
    assert_difference('SponsorType.count', -1) do
      delete sponsor_type_url(@sponsor_type)
    end

    assert_redirected_to sponsor_types_url
  end
end
