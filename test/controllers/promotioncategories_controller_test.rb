require 'test_helper'

class PromotioncategoriesControllerTest < ActionController::TestCase
  setup do
    @promotioncategory = promotioncategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotioncategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotioncategory" do
    assert_difference('Promotioncategory.count') do
      post :create, promotioncategory: { category_id: @promotioncategory.category_id, promotion_id: @promotioncategory.promotion_id }
    end

    assert_redirected_to promotioncategory_path(assigns(:promotioncategory))
  end

  test "should show promotioncategory" do
    get :show, id: @promotioncategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotioncategory
    assert_response :success
  end

  test "should update promotioncategory" do
    patch :update, id: @promotioncategory, promotioncategory: { category_id: @promotioncategory.category_id, promotion_id: @promotioncategory.promotion_id }
    assert_redirected_to promotioncategory_path(assigns(:promotioncategory))
  end

  test "should destroy promotioncategory" do
    assert_difference('Promotioncategory.count', -1) do
      delete :destroy, id: @promotioncategory
    end

    assert_redirected_to promotioncategories_path
  end
end
