require 'test_helper'

class PromotionBranchesControllerTest < ActionController::TestCase
  setup do
    @promotion_branch = promotion_branches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotion_branches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion_branch" do
    assert_difference('PromotionBranch.count') do
      post :create, promotion_branch: { branch_id: @promotion_branch.branch_id, promotion_id: @promotion_branch.promotion_id }
    end

    assert_redirected_to promotion_branch_path(assigns(:promotion_branch))
  end

  test "should show promotion_branch" do
    get :show, id: @promotion_branch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion_branch
    assert_response :success
  end

  test "should update promotion_branch" do
    patch :update, id: @promotion_branch, promotion_branch: { branch_id: @promotion_branch.branch_id, promotion_id: @promotion_branch.promotion_id }
    assert_redirected_to promotion_branch_path(assigns(:promotion_branch))
  end

  test "should destroy promotion_branch" do
    assert_difference('PromotionBranch.count', -1) do
      delete :destroy, id: @promotion_branch
    end

    assert_redirected_to promotion_branches_path
  end
end
