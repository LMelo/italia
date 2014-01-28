require 'test_helper'

class NoticiaControllerTest < ActionController::TestCase
  test "should get lista" do
    get :lista
    assert_response :success
  end

end
