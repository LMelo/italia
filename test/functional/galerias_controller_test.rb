require 'test_helper'

class GaleriasControllerTest < ActionController::TestCase
  setup do
    @galeria = galerias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galerias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria" do
    assert_difference('Galeria.count') do
      post :create, galeria: { titulo: @galeria.titulo }
    end

    assert_redirected_to galeria_path(assigns(:galeria))
  end

  test "should show galeria" do
    get :show, id: @galeria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria
    assert_response :success
  end

  test "should update galeria" do
    put :update, id: @galeria, galeria: { titulo: @galeria.titulo }
    assert_redirected_to galeria_path(assigns(:galeria))
  end

  test "should destroy galeria" do
    assert_difference('Galeria.count', -1) do
      delete :destroy, id: @galeria
    end

    assert_redirected_to galerias_path
  end
end
