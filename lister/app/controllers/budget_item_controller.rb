class BudgetItemsController < ApplicationController

  def create
    @budget_item = @planner_list.budget_items.create(budget_item_params)
    redirect_to @planner_list
  end

  private

  def set_planner_list
    @planner_list = Plannerlist.find(params[:planner_list_id]
  end

  def budget_item_params
    params[:budget_item].permit(:item, :no_of_items, :price_of_each, :photo_url, :contact)


end