require 'test_helper'

class CostCentersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_center" do
    assert_difference('CostCenter.count') do
      post :create, :cost_center => { }
    end

    assert_redirected_to cost_center_path(assigns(:cost_center))
  end

  test "should show cost_center" do
    get :show, :id => cost_centers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cost_centers(:one).to_param
    assert_response :success
  end

  test "should update cost_center" do
    put :update, :id => cost_centers(:one).to_param, :cost_center => { }
    assert_redirected_to cost_center_path(assigns(:cost_center))
  end

  test "should destroy cost_center" do
    assert_difference('CostCenter.count', -1) do
      delete :destroy, :id => cost_centers(:one).to_param
    end

    assert_redirected_to cost_centers_path
  end
end
