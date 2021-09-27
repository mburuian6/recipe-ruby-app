require "test_helper"

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_details_show_url
    assert_response :success
  end
end
