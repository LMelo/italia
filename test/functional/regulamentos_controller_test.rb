require 'test_helper'

class RegulamentosControllerTest < ActionController::TestCase
  setup do
    @regulamento = regulamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regulamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regulamento" do
    assert_difference('Regulamento.count') do
      post :create, regulamento: { descricao: @regulamento.descricao, regulamento_id: @regulamento.regulamento_id, secao: @regulamento.secao }
    end

    assert_redirected_to regulamento_path(assigns(:regulamento))
  end

  test "should show regulamento" do
    get :show, id: @regulamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regulamento
    assert_response :success
  end

  test "should update regulamento" do
    put :update, id: @regulamento, regulamento: { descricao: @regulamento.descricao, regulamento_id: @regulamento.regulamento_id, secao: @regulamento.secao }
    assert_redirected_to regulamento_path(assigns(:regulamento))
  end

  test "should destroy regulamento" do
    assert_difference('Regulamento.count', -1) do
      delete :destroy, id: @regulamento
    end

    assert_redirected_to regulamentos_path
  end
end
