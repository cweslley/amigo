require 'test_helper'

class ColetamaterialsControllerTest < ActionController::TestCase
  setup do
    @coletamaterial = coletamaterials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coletamaterials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coletamaterial" do
    assert_difference('Coletamaterial.count') do
      post :create, coletamaterial: { descricao: @coletamaterial.descricao, instituicao_id: @coletamaterial.instituicao_id }
    end

    assert_redirected_to coletamaterial_path(assigns(:coletamaterial))
  end

  test "should show coletamaterial" do
    get :show, id: @coletamaterial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coletamaterial
    assert_response :success
  end

  test "should update coletamaterial" do
    put :update, id: @coletamaterial, coletamaterial: { descricao: @coletamaterial.descricao, instituicao_id: @coletamaterial.instituicao_id }
    assert_redirected_to coletamaterial_path(assigns(:coletamaterial))
  end

  test "should destroy coletamaterial" do
    assert_difference('Coletamaterial.count', -1) do
      delete :destroy, id: @coletamaterial
    end

    assert_redirected_to coletamaterials_path
  end
end
