require 'test_helper'

class DaerahsControllerTest < ActionController::TestCase
  setup do
    @daerah = daerahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daerahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daerah" do
    assert_difference('Daerah.count') do
      post :create, daerah: { foto: @daerah.foto, nama: @daerah.nama }
    end

    assert_redirected_to daerah_path(assigns(:daerah))
  end

  test "should show daerah" do
    get :show, id: @daerah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daerah
    assert_response :success
  end

  test "should update daerah" do
    patch :update, id: @daerah, daerah: { foto: @daerah.foto, nama: @daerah.nama }
    assert_redirected_to daerah_path(assigns(:daerah))
  end

  test "should destroy daerah" do
    assert_difference('Daerah.count', -1) do
      delete :destroy, id: @daerah
    end

    assert_redirected_to daerahs_path
  end
end
