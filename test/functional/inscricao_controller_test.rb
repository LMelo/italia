require 'test_helper'

class InscricaoControllerTest < ActionController::TestCase
  test "should get detalhes" do
    get :detalhes
    assert_response :success
  end

end
