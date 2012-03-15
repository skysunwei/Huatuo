require 'test_helper'

class SubApartmentsControllerTest < ActionController::TestCase
  setup do
    @sub_apartment = sub_apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_apartment" do
    assert_difference('SubApartment.count') do
      post :create, :sub_apartment => @sub_apartment.attributes
    end

    assert_redirected_to sub_apartment_path(assigns(:sub_apartment))
  end

  test "should show sub_apartment" do
    get :show, :id => @sub_apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sub_apartment
    assert_response :success
  end

  test "should update sub_apartment" do
    put :update, :id => @sub_apartment, :sub_apartment => @sub_apartment.attributes
    assert_redirected_to sub_apartment_path(assigns(:sub_apartment))
  end

  test "should destroy sub_apartment" do
    assert_difference('SubApartment.count', -1) do
      delete :destroy, :id => @sub_apartment
    end

    assert_redirected_to sub_apartments_path
  end
end
