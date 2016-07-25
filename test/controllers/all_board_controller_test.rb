require 'test_helper'

class AllBoardControllerTest < ActionController::TestCase
  test "should get all_board" do
    get :all_board
    assert_response :success
  end

end
