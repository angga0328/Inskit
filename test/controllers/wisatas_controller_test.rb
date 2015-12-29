require 'test_helper'

class WisatasControllerTest < ActionController::TestCase
  setup do
    @wisata = wisatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wisatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wisata" do
    assert_difference('Wisata.count') do
      post :create, wisata: { alamat: @wisata.alamat, daerah_id: @wisata.daerah_id, deskripsi: @wisata.deskripsi, kategori_id: @wisata.kategori_id, nama: @wisata.nama, telp: @wisata.telp }
    end

    assert_redirected_to wisata_path(assigns(:wisata))
  end

  test "should show wisata" do
    get :show, id: @wisata
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wisata
    assert_response :success
  end

  test "should update wisata" do
    patch :update, id: @wisata, wisata: { alamat: @wisata.alamat, daerah_id: @wisata.daerah_id, deskripsi: @wisata.deskripsi, kategori_id: @wisata.kategori_id, nama: @wisata.nama, telp: @wisata.telp }
    assert_redirected_to wisata_path(assigns(:wisata))
  end

  test "should destroy wisata" do
    assert_difference('Wisata.count', -1) do
      delete :destroy, id: @wisata
    end

    assert_redirected_to wisatas_path
  end
end
