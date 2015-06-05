class BudgetItemsController < ApplicationController
  before_action :set_planner_list

  def create
    @budget_item = @planner_list.budget_items.create(budget_item_params)
    redirect_to @planner_list
end

private

def set_planner_list
  @planner_list = PlannerList.find(params[:planner_list_id])
end

def budget_item_params
  params[:budget_item].permit(:item, :no_item, :price, :photo_url, :website, :contact)
end

end
