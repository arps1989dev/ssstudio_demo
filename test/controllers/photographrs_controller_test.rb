require 'test_helper'

class PhotographrsControllerTest < ActionController::TestCase
  setup do
    @photographr = photographrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photographr" do
    assert_difference('Photographr.count') do
      post :create, photographr: { address: @photographr.address, birthdate: @photographr.birthdate, city: @photographr.city, country: @photographr.country, email: @photographr.email, fname: @photographr.fname, lname: @photographr.lname, phone: @photographr.phone, state: @photographr.state }
    end

    assert_redirected_to photographr_path(assigns(:photographr))
  end

  test "should show photographr" do
    get :show, id: @photographr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photographr
    assert_response :success
  end

  test "should update photographr" do
    patch :update, id: @photographr, photographr: { address: @photographr.address, birthdate: @photographr.birthdate, city: @photographr.city, country: @photographr.country, email: @photographr.email, fname: @photographr.fname, lname: @photographr.lname, phone: @photographr.phone, state: @photographr.state }
    assert_redirected_to photographr_path(assigns(:photographr))
  end

  test "should destroy photographr" do
    assert_difference('Photographr.count', -1) do
      delete :destroy, id: @photographr
    end

    assert_redirected_to photographrs_path
  end
end
