require 'test_helper'

class BeritasControllerTest < ActionController::TestCase
  setup do
    @berita = beritas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beritas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berita" do
    assert_difference('Berita.count') do
      post :create, berita: { content: @berita.content, foto: @berita.foto, title: @berita.title }
    end

    assert_redirected_to berita_path(assigns(:berita))
  end

  test "should show berita" do
    get :show, id: @berita
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berita
    assert_response :success
  end

  test "should update berita" do
    patch :update, id: @berita, berita: { content: @berita.content, foto: @berita.foto, title: @berita.title }
    assert_redirected_to berita_path(assigns(:berita))
  end

  test "should destroy berita" do
    assert_difference('Berita.count', -1) do
      delete :destroy, id: @berita
    end

    assert_redirected_to beritas_path
  end
end
