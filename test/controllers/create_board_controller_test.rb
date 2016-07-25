require 'test_helper'

class CreateBoardControllerTest < ActionController::TestCase
  test "should get create_board" do
    get :create_board
    assert_response :success
  end

end
