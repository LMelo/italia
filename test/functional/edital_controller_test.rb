require 'test_helper'

class EditalControllerTest < ActionController::TestCase
  test "should get regulamento" do
    get :regulamento
    assert_response :success
  end

end
