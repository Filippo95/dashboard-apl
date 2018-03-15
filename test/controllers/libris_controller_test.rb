require 'test_helper'

class LibrisControllerTest < ActionController::TestCase
  setup do
    @libri = libris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libri" do
    assert_difference('Libri.count') do
      post :create, libri: { prezzo: @libri.prezzo, titolo: @libri.titolo }
    end

    assert_redirected_to libri_path(assigns(:libri))
  end

  test "should show libri" do
    get :show, id: @libri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libri
    assert_response :success
  end

  test "should update libri" do
    patch :update, id: @libri, libri: { prezzo: @libri.prezzo, titolo: @libri.titolo }
    assert_redirected_to libri_path(assigns(:libri))
  end

  test "should destroy libri" do
    assert_difference('Libri.count', -1) do
      delete :destroy, id: @libri
    end

    assert_redirected_to libris_path
  end
end
