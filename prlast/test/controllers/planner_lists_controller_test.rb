require 'test_helper'

class PlannerListsControllerTest < ActionController::TestCase
  setup do
    @planner_list = planner_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planner_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planner_list" do
    assert_difference('PlannerList.count') do
      post :create, planner_list: { budget: @planner_list.budget, event: @planner_list.event, user_id: @planner_list.user_id }
    end

    assert_redirected_to planner_list_path(assigns(:planner_list))
  end

  test "should show planner_list" do
    get :show, id: @planner_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planner_list
    assert_response :success
  end

  test "should update planner_list" do
    patch :update, id: @planner_list, planner_list: { budget: @planner_list.budget, event: @planner_list.event, user_id: @planner_list.user_id }
    assert_redirected_to planner_list_path(assigns(:planner_list))
  end

  test "should destroy planner_list" do
    assert_difference('PlannerList.count', -1) do
      delete :destroy, id: @planner_list
    end

    assert_redirected_to planner_lists_path
  end
end
