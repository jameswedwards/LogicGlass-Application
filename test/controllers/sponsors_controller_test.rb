require 'test_helper'

class SponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsor = sponsors(:one)
  end

  test "should get index" do
    get sponsors_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsor_url
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference('Sponsor.count') do
      post sponsors_url, params: { sponsor: { first_name: @sponsor.first_name, home_phone: @sponsor.home_phone, last_name: @sponsor.last_name, mobile_phone: @sponsor.mobile_phone, sponsor_type_id: @sponsor.sponsor_type_id } }
    end

    assert_redirected_to sponsor_url(Sponsor.last)
  end

  test "should show sponsor" do
    get sponsor_url(@sponsor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsor_url(@sponsor)
    assert_response :success
  end

  test "should update sponsor" do
    patch sponsor_url(@sponsor), params: { sponsor: { first_name: @sponsor.first_name, home_phone: @sponsor.home_phone, last_name: @sponsor.last_name, mobile_phone: @sponsor.mobile_phone, sponsor_type_id: @sponsor.sponsor_type_id } }
    assert_redirected_to sponsor_url(@sponsor)
  end

  test "should destroy sponsor" do
    assert_difference('Sponsor.count', -1) do
      delete sponsor_url(@sponsor)
    end

    assert_redirected_to sponsors_url
  end
end
