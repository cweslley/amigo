require 'test_helper'

class EspeciesControllerTest < ActionController::TestCase
  setup do
    @especy = especies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especy" do
    assert_difference('Especie.count') do
      post :create, especy: { descricao: @especy.descricao }
    end

    assert_redirected_to especy_path(assigns(:especy))
  end

  test "should show especy" do
    get :show, id: @especy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especy
    assert_response :success
  end

  test "should update especy" do
    put :update, id: @especy, especy: { descricao: @especy.descricao }
    assert_redirected_to especy_path(assigns(:especy))
  end

  test "should destroy especy" do
    assert_difference('Especie.count', -1) do
      delete :destroy, id: @especy
    end

    assert_redirected_to especies_path
  end
end
