require 'test_helper'

class ToreadsControllerTest < ActionController::TestCase
  setup do
    @toread = toreads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toreads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toread" do
    assert_difference('Toread.count') do
      post :create, toread: { description: @toread.description, read: @toread.read, title: @toread.title }
    end

    assert_redirected_to toread_path(assigns(:toread))
  end

  test "should show toread" do
    get :show, id: @toread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toread
    assert_response :success
  end

  test "should update toread" do
    patch :update, id: @toread, toread: { description: @toread.description, read: @toread.read, title: @toread.title }
    assert_redirected_to toread_path(assigns(:toread))
  end

  test "should destroy toread" do
    assert_difference('Toread.count', -1) do
      delete :destroy, id: @toread
    end

    assert_redirected_to toreads_path
  end
end
