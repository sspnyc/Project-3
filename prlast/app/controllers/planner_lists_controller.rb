class PlannerListsController < ApplicationController
  before_action :set_planner_list, only: [:show, :edit, :update, :destroy]

  # GET /planner_lists
  # GET /planner_lists.json
  def index
    @planner_lists = PlannerList.all
  end

  # GET /planner_lists/1
  # GET /planner_lists/1.json
  def show
  end

  # GET /planner_lists/new
  def new
    @planner_list = PlannerList.new
  end

  # GET /planner_lists/1/edit
  def edit
  end

  # POST /planner_lists
  # POST /planner_lists.json
  def create
    @planner_list = PlannerList.new(planner_list_params)

    respond_to do |format|
      if @planner_list.save
        format.html { redirect_to @planner_list, notice: 'Planner list was successfully created.' }
        format.json { render :show, status: :created, location: @planner_list }
      else
        format.html { render :new }
        format.json { render json: @planner_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planner_lists/1
  # PATCH/PUT /planner_lists/1.json
  def update
    respond_to do |format|
      if @planner_list.update(planner_list_params)
        format.html { redirect_to @planner_list, notice: 'Planner list was successfully updated.' }
        format.json { render :show, status: :ok, location: @planner_list }
      else
        format.html { render :edit }
        format.json { render json: @planner_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planner_lists/1
  # DELETE /planner_lists/1.json
  def destroy
    @planner_list.destroy
    respond_to do |format|
      format.html { redirect_to planner_lists_url, notice: 'Planner list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner_list
      @planner_list = PlannerList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planner_list_params
      params.require(:planner_list).permit(:event, :budget, :user_id)
    end
end
