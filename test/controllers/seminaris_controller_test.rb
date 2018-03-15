require 'test_helper'

class SeminarisControllerTest < ActionController::TestCase
  setup do
    @seminari = seminaris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminaris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminari" do
    assert_difference('Seminari.count') do
      post :create, seminari: { al: @seminari.al, da: @seminari.da, descrizione: @seminari.descrizione, luogo: @seminari.luogo, nazione: @seminari.nazione, titolo: @seminari.titolo }
    end

    assert_redirected_to seminari_path(assigns(:seminari))
  end

  test "should show seminari" do
    get :show, id: @seminari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminari
    assert_response :success
  end

  test "should update seminari" do
    patch :update, id: @seminari, seminari: { al: @seminari.al, da: @seminari.da, descrizione: @seminari.descrizione, luogo: @seminari.luogo, nazione: @seminari.nazione, titolo: @seminari.titolo }
    assert_redirected_to seminari_path(assigns(:seminari))
  end

  test "should destroy seminari" do
    assert_difference('Seminari.count', -1) do
      delete :destroy, id: @seminari
    end

    assert_redirected_to seminaris_path
  end
end
