require 'test_helper'

class AlbumfotohotelsControllerTest < ActionController::TestCase
  setup do
    @albumfotohotel = albumfotohotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumfotohotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumfotohotel" do
    assert_difference('Albumfotohotel.count') do
      post :create, albumfotohotel: { foto: @albumfotohotel.foto, hotel_id: @albumfotohotel.hotel_id }
    end

    assert_redirected_to albumfotohotel_path(assigns(:albumfotohotel))
  end

  test "should show albumfotohotel" do
    get :show, id: @albumfotohotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumfotohotel
    assert_response :success
  end

  test "should update albumfotohotel" do
    patch :update, id: @albumfotohotel, albumfotohotel: { foto: @albumfotohotel.foto, hotel_id: @albumfotohotel.hotel_id }
    assert_redirected_to albumfotohotel_path(assigns(:albumfotohotel))
  end

  test "should destroy albumfotohotel" do
    assert_difference('Albumfotohotel.count', -1) do
      delete :destroy, id: @albumfotohotel
    end

    assert_redirected_to albumfotohotels_path
  end
end
