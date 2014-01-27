require 'test_helper'

class PremioControllerTest < ActionController::TestCase
  test "should get descricao" do
    get :descricao
    assert_response :success
  end

end
