require 'test_helper'

class JenishotelsControllerTest < ActionController::TestCase
  setup do
    @jenishotel = jenishotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jenishotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jenishotel" do
    assert_difference('Jenishotel.count') do
      post :create, jenishotel: { foto: @jenishotel.foto, hotel_id: @jenishotel.hotel_id, jenis_kamar: @jenishotel.jenis_kamar }
    end

    assert_redirected_to jenishotel_path(assigns(:jenishotel))
  end

  test "should show jenishotel" do
    get :show, id: @jenishotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jenishotel
    assert_response :success
  end

  test "should update jenishotel" do
    patch :update, id: @jenishotel, jenishotel: { foto: @jenishotel.foto, hotel_id: @jenishotel.hotel_id, jenis_kamar: @jenishotel.jenis_kamar }
    assert_redirected_to jenishotel_path(assigns(:jenishotel))
  end

  test "should destroy jenishotel" do
    assert_difference('Jenishotel.count', -1) do
      delete :destroy, id: @jenishotel
    end

    assert_redirected_to jenishotels_path
  end
end
