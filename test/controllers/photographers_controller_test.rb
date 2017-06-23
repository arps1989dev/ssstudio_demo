require 'test_helper'

class PhotographersControllerTest < ActionController::TestCase
  setup do
    @photographer = photographers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photographer" do
    assert_difference('Photographer.count') do
      post :create, photographer: { address: @photographer.address, birthdate: @photographer.birthdate, city: @photographer.city, country: @photographer.country, email: @photographer.email, fname: @photographer.fname, lname: @photographer.lname, phone: @photographer.phone, state: @photographer.state }
    end

    assert_redirected_to photographer_path(assigns(:photographer))
  end

  test "should show photographer" do
    get :show, id: @photographer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photographer
    assert_response :success
  end

  test "should update photographer" do
    patch :update, id: @photographer, photographer: { address: @photographer.address, birthdate: @photographer.birthdate, city: @photographer.city, country: @photographer.country, email: @photographer.email, fname: @photographer.fname, lname: @photographer.lname, phone: @photographer.phone, state: @photographer.state }
    assert_redirected_to photographer_path(assigns(:photographer))
  end

  test "should destroy photographer" do
    assert_difference('Photographer.count', -1) do
      delete :destroy, id: @photographer
    end

    assert_redirected_to photographers_path
  end
end
