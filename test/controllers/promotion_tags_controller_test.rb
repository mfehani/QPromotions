require 'test_helper'

class PromotionTagsControllerTest < ActionController::TestCase
  setup do
    @promotion_tag = promotion_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotion_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion_tag" do
    assert_difference('PromotionTag.count') do
      post :create, promotion_tag: { promotion_id: @promotion_tag.promotion_id, tag_id: @promotion_tag.tag_id }
    end

    assert_redirected_to promotion_tag_path(assigns(:promotion_tag))
  end

  test "should show promotion_tag" do
    get :show, id: @promotion_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion_tag
    assert_response :success
  end

  test "should update promotion_tag" do
    patch :update, id: @promotion_tag, promotion_tag: { promotion_id: @promotion_tag.promotion_id, tag_id: @promotion_tag.tag_id }
    assert_redirected_to promotion_tag_path(assigns(:promotion_tag))
  end

  test "should destroy promotion_tag" do
    assert_difference('PromotionTag.count', -1) do
      delete :destroy, id: @promotion_tag
    end

    assert_redirected_to promotion_tags_path
  end
end
