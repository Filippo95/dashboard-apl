require 'test_helper'

class AttivitaControllerTest < ActionController::TestCase
  setup do
    @attivitum = attivita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attivita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attivitum" do
    assert_difference('Attivitum.count') do
      post :create, attivitum: { data: @attivitum.data, descrizione: @attivitum.descrizione, luogo: @attivitum.luogo, titolo: @attivitum.titolo }
    end

    assert_redirected_to attivitum_path(assigns(:attivitum))
  end

  test "should show attivitum" do
    get :show, id: @attivitum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attivitum
    assert_response :success
  end

  test "should update attivitum" do
    patch :update, id: @attivitum, attivitum: { data: @attivitum.data, descrizione: @attivitum.descrizione, luogo: @attivitum.luogo, titolo: @attivitum.titolo }
    assert_redirected_to attivitum_path(assigns(:attivitum))
  end

  test "should destroy attivitum" do
    assert_difference('Attivitum.count', -1) do
      delete :destroy, id: @attivitum
    end

    assert_redirected_to attivita_path
  end
end
