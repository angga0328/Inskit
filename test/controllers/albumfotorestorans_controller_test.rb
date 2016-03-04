require 'test_helper'

class AlbumfotorestoransControllerTest < ActionController::TestCase
  setup do
    @albumfotorestoran = albumfotorestorans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumfotorestorans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumfotorestoran" do
    assert_difference('Albumfotorestoran.count') do
      post :create, albumfotorestoran: { foto: @albumfotorestoran.foto, restaurant_id: @albumfotorestoran.restaurant_id }
    end

    assert_redirected_to albumfotorestoran_path(assigns(:albumfotorestoran))
  end

  test "should show albumfotorestoran" do
    get :show, id: @albumfotorestoran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumfotorestoran
    assert_response :success
  end

  test "should update albumfotorestoran" do
    patch :update, id: @albumfotorestoran, albumfotorestoran: { foto: @albumfotorestoran.foto, restaurant_id: @albumfotorestoran.restaurant_id }
    assert_redirected_to albumfotorestoran_path(assigns(:albumfotorestoran))
  end

  test "should destroy albumfotorestoran" do
    assert_difference('Albumfotorestoran.count', -1) do
      delete :destroy, id: @albumfotorestoran
    end

    assert_redirected_to albumfotorestorans_path
  end
end
