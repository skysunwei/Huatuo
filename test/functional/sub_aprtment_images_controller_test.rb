require 'test_helper'

class SubAprtmentImagesControllerTest < ActionController::TestCase
  setup do
    @sub_aprtment_image = sub_aprtment_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_aprtment_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_aprtment_image" do
    assert_difference('SubAprtmentImage.count') do
      post :create, :sub_aprtment_image => @sub_aprtment_image.attributes
    end

    assert_redirected_to sub_aprtment_image_path(assigns(:sub_aprtment_image))
  end

  test "should show sub_aprtment_image" do
    get :show, :id => @sub_aprtment_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sub_aprtment_image
    assert_response :success
  end

  test "should update sub_aprtment_image" do
    put :update, :id => @sub_aprtment_image, :sub_aprtment_image => @sub_aprtment_image.attributes
    assert_redirected_to sub_aprtment_image_path(assigns(:sub_aprtment_image))
  end

  test "should destroy sub_aprtment_image" do
    assert_difference('SubAprtmentImage.count', -1) do
      delete :destroy, :id => @sub_aprtment_image
    end

    assert_redirected_to sub_aprtment_images_path
  end
end
