require 'test_helper'

class ImmaginesControllerTest < ActionController::TestCase
  setup do
    @immagine = immagines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:immagines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create immagine" do
    assert_difference('Immagine.count') do
      post :create, immagine: { url: @immagine.url }
    end

    assert_redirected_to immagine_path(assigns(:immagine))
  end

  test "should show immagine" do
    get :show, id: @immagine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @immagine
    assert_response :success
  end

  test "should update immagine" do
    patch :update, id: @immagine, immagine: { url: @immagine.url }
    assert_redirected_to immagine_path(assigns(:immagine))
  end

  test "should destroy immagine" do
    assert_difference('Immagine.count', -1) do
      delete :destroy, id: @immagine
    end

    assert_redirected_to immagines_path
  end
end
