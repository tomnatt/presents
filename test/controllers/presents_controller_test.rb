require 'test_helper'

class PresentsControllerTest < ActionController::TestCase
  setup do
    @present = presents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create present" do
    assert_difference('Present.count') do
      post :create, present: { description: @present.description, price: @present.price, title: @present.title, url: @present.url }
    end

    assert_redirected_to present_path(assigns(:present))
  end

  test "should show present" do
    get :show, id: @present
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @present
    assert_response :success
  end

  test "should update present" do
    patch :update, id: @present, present: { description: @present.description, price: @present.price, title: @present.title, url: @present.url }
    assert_redirected_to present_path(assigns(:present))
  end

  test "should destroy present" do
    assert_difference('Present.count', -1) do
      delete :destroy, id: @present
    end

    assert_redirected_to presents_path
  end
end
