require 'test_helper'

class FindBoardControllerTest < ActionController::TestCase
  test "should get find_board" do
    get :find_board
    assert_response :success
  end

end
