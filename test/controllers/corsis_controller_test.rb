require 'test_helper'

class CorsisControllerTest < ActionController::TestCase
  setup do
    @corsi = corsis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corsis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corsi" do
    assert_difference('Corsi.count') do
      post :create, corsi: { contatto: @corsi.contatto, data: @corsi.data, descrizione: @corsi.descrizione, luogo: @corsi.luogo, titolo: @corsi.titolo }
    end

    assert_redirected_to corsi_path(assigns(:corsi))
  end

  test "should show corsi" do
    get :show, id: @corsi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corsi
    assert_response :success
  end

  test "should update corsi" do
    patch :update, id: @corsi, corsi: { contatto: @corsi.contatto, data: @corsi.data, descrizione: @corsi.descrizione, luogo: @corsi.luogo, titolo: @corsi.titolo }
    assert_redirected_to corsi_path(assigns(:corsi))
  end

  test "should destroy corsi" do
    assert_difference('Corsi.count', -1) do
      delete :destroy, id: @corsi
    end

    assert_redirected_to corsis_path
  end
end
