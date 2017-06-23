require 'test_helper'

class SelectedPhotosControllerTest < ActionController::TestCase
  setup do
    @selected_photo = selected_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selected_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected_photo" do
    assert_difference('SelectedPhoto.count') do
      post :create, selected_photo: { photo_id: @selected_photo.photo_id }
    end

    assert_redirected_to selected_photo_path(assigns(:selected_photo))
  end

  test "should show selected_photo" do
    get :show, id: @selected_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected_photo
    assert_response :success
  end

  test "should update selected_photo" do
    patch :update, id: @selected_photo, selected_photo: { photo_id: @selected_photo.photo_id }
    assert_redirected_to selected_photo_path(assigns(:selected_photo))
  end

  test "should destroy selected_photo" do
    assert_difference('SelectedPhoto.count', -1) do
      delete :destroy, id: @selected_photo
    end

    assert_redirected_to selected_photos_path
  end
end
