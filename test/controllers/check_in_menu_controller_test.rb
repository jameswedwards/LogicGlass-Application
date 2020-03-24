require 'test_helper'

class CheckInMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get check_in_menu_index_url
    assert_response :success
  end

end
