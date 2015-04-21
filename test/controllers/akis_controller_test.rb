require 'test_helper'

class AkisControllerTest < ActionController::TestCase
  setup do
    @aki = akis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aki" do
    assert_difference('Aki.count') do
      post :create, aki: { body: @aki.body, title: @aki.title }
    end

    assert_redirected_to aki_path(assigns(:aki))
  end

  test "should show aki" do
    get :show, id: @aki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aki
    assert_response :success
  end

  test "should update aki" do
    patch :update, id: @aki, aki: { body: @aki.body, title: @aki.title }
    assert_redirected_to aki_path(assigns(:aki))
  end

  test "should destroy aki" do
    assert_difference('Aki.count', -1) do
      delete :destroy, id: @aki
    end

    assert_redirected_to akis_path
  end
end
