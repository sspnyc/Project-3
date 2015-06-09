class PlannerListsController < ApplicationController

  def index
    @planner_lists = Planner_list.all
    render :index
  end

  def new
    @planner_lists = Planner_list.new
    render :new
  end

  def create
    @planner_list = Planner_list.new
    @planner_list.event = params[:event]
    @planner_list.budget = params[:budget]

    if @entry.save
      redirect_to "/planner_lists"
    else 
      render :new
    end
  end

def show
    @planner_list = Planner_list.find(params[:id])
    render :show
end

def destroy
  @planner_list = Planner_list.find(params[:id])
  @planner_list.destroy
    redirect_to "/Planner_lists"
end
end

def replace
  @planner_list = Planner_lists.find(params[:id])
 
  if @planner_list.update
    redirect_to @planner_list
  else
    render 'replace'
end
end