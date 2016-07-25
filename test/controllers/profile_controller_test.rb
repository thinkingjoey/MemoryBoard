require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get profile_home" do
    get :profile_home
    assert_response :success
  end

end
