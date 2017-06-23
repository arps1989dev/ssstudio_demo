require 'test_helper'

class WaterMarksControllerTest < ActionController::TestCase
  setup do
    @water_mark = water_marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_mark" do
    assert_difference('WaterMark.count') do
      post :create, water_mark: {  }
    end

    assert_redirected_to water_mark_path(assigns(:water_mark))
  end

  test "should show water_mark" do
    get :show, id: @water_mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_mark
    assert_response :success
  end

  test "should update water_mark" do
    patch :update, id: @water_mark, water_mark: {  }
    assert_redirected_to water_mark_path(assigns(:water_mark))
  end

  test "should destroy water_mark" do
    assert_difference('WaterMark.count', -1) do
      delete :destroy, id: @water_mark
    end

    assert_redirected_to water_marks_path
  end
end
