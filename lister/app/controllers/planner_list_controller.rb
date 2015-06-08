class PlannerListsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @planner_list = @user.planner_lists.create(planner_list_params)
    redirect_to @user
  end

  private

  def set_user
    @user = User.find(params(:user_id))
  end

  def planner_list_params
    params[:planner_list].permit(:event, :budget)
  end

end