require 'test_helper'

class SaransControllerTest < ActionController::TestCase
  setup do
    @saran = sarans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sarans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saran" do
    assert_difference('Saran.count') do
      post :create, saran: { email: @saran.email, nama: @saran.nama, pesan: @saran.pesan }
    end

    assert_redirected_to saran_path(assigns(:saran))
  end

  test "should show saran" do
    get :show, id: @saran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saran
    assert_response :success
  end

  test "should update saran" do
    patch :update, id: @saran, saran: { email: @saran.email, nama: @saran.nama, pesan: @saran.pesan }
    assert_redirected_to saran_path(assigns(:saran))
  end

  test "should destroy saran" do
    assert_difference('Saran.count', -1) do
      delete :destroy, id: @saran
    end

    assert_redirected_to sarans_path
  end
end
