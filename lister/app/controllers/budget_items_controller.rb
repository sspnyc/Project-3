class BudgetItemsController < ApplicationController

  def index
    @budget_items = Budget_item.all
    render :index
  end

  def new
    @budget_item = Budget_item.new
    render :new
  end

  def create
    @budget_item = Budget_item.new
    @budget_item.item = params[:item]
    @budget_item.no_of_items = params[:no_of_items]
    @budget_item.price_of_each = params[:price_of_each]
    @budget_item.contact = params[:contact]

    if @budget_item.save
      redirect_to "/budget_items"
    else 
      render :new
    end
  end

def show
    @budget_item = Budget_item.find(params[:id])
    render :show
end

def destroy
  @budget_item = Budget_item.find(params[:id])
  @budget_item.destroy
    redirect_to "/budget_items"
end
end

def replace
  @budget_item = Budget_item.find(params[:id])
 
  if @budget_items.update
    redirect_to @budget_items
  else
    render 'replace'
end
end