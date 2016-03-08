require 'test_helper'

class MenurestoransControllerTest < ActionController::TestCase
  setup do
    @menurestoran = menurestorans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menurestorans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menurestoran" do
    assert_difference('Menurestoran.count') do
      post :create, menurestoran: { foto: @menurestoran.foto, nama_menu: @menurestoran.nama_menu, restaurant_id: @menurestoran.restaurant_id }
    end

    assert_redirected_to menurestoran_path(assigns(:menurestoran))
  end

  test "should show menurestoran" do
    get :show, id: @menurestoran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menurestoran
    assert_response :success
  end

  test "should update menurestoran" do
    patch :update, id: @menurestoran, menurestoran: { foto: @menurestoran.foto, nama_menu: @menurestoran.nama_menu, restaurant_id: @menurestoran.restaurant_id }
    assert_redirected_to menurestoran_path(assigns(:menurestoran))
  end

  test "should destroy menurestoran" do
    assert_difference('Menurestoran.count', -1) do
      delete :destroy, id: @menurestoran
    end

    assert_redirected_to menurestorans_path
  end
end
