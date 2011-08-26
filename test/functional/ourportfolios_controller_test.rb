require 'test_helper'

class OurportfoliosControllerTest < ActionController::TestCase
  setup do
    @ourportfolio = ourportfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ourportfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ourportfolio" do
    assert_difference('Ourportfolio.count') do
      post :create, :ourportfolio => @ourportfolio.attributes
    end

    assert_redirected_to ourportfolio_path(assigns(:ourportfolio))
  end

  test "should show ourportfolio" do
    get :show, :id => @ourportfolio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ourportfolio.to_param
    assert_response :success
  end

  test "should update ourportfolio" do
    put :update, :id => @ourportfolio.to_param, :ourportfolio => @ourportfolio.attributes
    assert_redirected_to ourportfolio_path(assigns(:ourportfolio))
  end

  test "should destroy ourportfolio" do
    assert_difference('Ourportfolio.count', -1) do
      delete :destroy, :id => @ourportfolio.to_param
    end

    assert_redirected_to ourportfolios_path
  end
end
